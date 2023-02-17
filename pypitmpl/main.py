"""This is the main file of the project"""

# Importing the libraries

from ._version import __version__


def get_version() -> str:
    """This is the cli function of the package"""
    return __version__
