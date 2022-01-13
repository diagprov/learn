__version__ = '0.1.0'

from pkg_resources import resource_filename

def return_filepath():
    return resource_filename('binpkg', 'testbin')
