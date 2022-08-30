
import sys
from .. import regfunc

def register_functions():
    functions = filter(lambda obj: callable(obj[1]), globals().items())
    handlers = dict(filter(lambda obj: hasattr(obj[1], 'is_registered') and
                                       obj[1].is_registered == True, functions))
    print(__name__)
    for name, obj in handlers.items():
        print(name)

    print("***")

@regfunc
def my_function():
    pass

@regfunc
def my_other_function():
    pass

def excluded_function():
    pass
