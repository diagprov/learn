
from functools import wraps

def regfunc(f):
    f.is_registered = True

    @wraps(f)
    def wrapper(*args, **kwargs):


        return f(*args, **kwargs)

    return wrapper


