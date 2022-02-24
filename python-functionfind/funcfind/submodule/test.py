
import sys
from .. import regfunc

def register_functions():
    for name, member in globals().items():
        if callable(member):
            if (hasattr(member, 'is_registered') and
                member.is_registered == True):
                print(member)
                print(member.__dict__)

@regfunc
def my_function():
    pass

@regfunc
def my_other_function():
    pass

def excluded_function():
    pass
