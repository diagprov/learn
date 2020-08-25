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


def nesteddictupdate(d, keylist, inputdict):

    keytuple = tuple(keylist[:-1])

    print("Update:", keytuple)
    if len(keytuple) != 0:
        del d[tuple(keytuple)]["include"]
        d[tuple(keytuple)] = {**d[keytuple], **inputdict}
    else:
        del d["include"]
        d = {**d, **inputdict}
    return d
import yaml

print(testdict[("inner", "innerinner", "include")])

print(yaml.dump(testdict))

update_list = list(filterdict(testdict, keyfilter=lambda x: x=="include"))
for path, value in update_list: 
    print(path, value)
    print("----Before")
    print(yaml.dump(testdict))
    d = nesteddictupdate(testdict, path, replacedict)
    testdict = d
    print("----After")
    print(yaml.dump(testdict))

print(yaml.dump(testdict))
print(yaml.dump(d))
