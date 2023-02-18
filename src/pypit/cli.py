"""This is the main file of the project"""

# Importing the libraries

from . import __version__


def run() -> None:
    """This is the cli function of the package"""
    print("This is the cli function of the package")
    print(f"The version of the package is: {__version__}")


if __name__ == "__main__":
    run()
