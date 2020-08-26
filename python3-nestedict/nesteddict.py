#!/usr/bin/env python3

import collections.abc as collections

testdict = {"Test": 2,
            "Anothertest": 3,
            "include": "/tmp/example",
            "inner": {
                "innerinner": {
                    "include": "/tmp/anotherexample",
                },
                "blue": "red",
                "include": "/tmp/yetanotherexample",
            },
            }

replacedict = {"england": 1,
               "scotland": 2,
               "ireland": 3}

def filterdict(d, prefix=None, keyfilter=None):
    for key,value in d.items():
        if isinstance(value, collections.Mapping):

            if prefix==None:
                newprefix=list()
            else:
                newprefix=prefix.copy()
            newprefix.append(key)
            yield from filterdict(value, newprefix, keyfilter)
        else:

            # only return keys of relevance
            # if we have no keyfilter, return all keys.
            if keyfilter != None:
                if keyfilter(key) != True:
                    continue
            if prefix != None:
                yield [*prefix, key], value
            else:
                yield [key], value


def nesteddictupdate(d, keylist, updatefunc):

    keytuple = keylist[:-1]
    replacekey = keylist[-1:][0]
    workingdict = d
    if len(keytuple) != 0:
    
        # python doesn't give us references to the dictionaries we overwrite
        # this is nasty, but it's the best we can do I think.
        # basic premise is this:
        #
        # 1. keep a stack of parent dictionaries for the current and key 
        #    used to find the child dictionary.
        # 2. iterate through the dictionary, recursively setting workingdict 
        #    to the child.
        # 3. delete the key we require deleting
        # 4. merge a new dictionary into this one.
        # 5. re-insert this child dictionary into its parent by popping the 
        #    stack, until we hit the parent
        # done.
        stack = []

        for k in keytuple:
            stack.append((k, workingdict))
            workingdict = workingdict[k]

        # extract value
        v = workingdict[replacekey]
        inputdict = updatefunc(v)
        del workingdict[replacekey]
        workingdict = {**workingdict, **inputdict}

        for parentkey, parentdict in reversed(stack):
            parentdict[parentkey] = workingdict
            workingdict = parentdict
        d = workingdict    
    else:
        # if the replace is in the root, this is much, much easier.

        v = workingdict[replacekey]
        inputdict = updatefunc(v)
        del workingdict[replacekey]
        d = {**workingdict, **inputdict}

    # return the result
    return d


import yaml

print(yaml.dump(testdict))

update_list = list(filterdict(testdict, keyfilter=lambda x: x=="include"))
for path, value in update_list: 
    print(path, value)
    print("----Before")
    print(yaml.dump(testdict))
    d = nesteddictupdate(testdict, path, lambda x: replacedict)
    testdict = d
    print("----After")
    print(yaml.dump(testdict))

print("...")
print(yaml.dump(testdict))
print("...")
print(yaml.dump(d))
