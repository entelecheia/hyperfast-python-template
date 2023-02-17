"""This is the main file of the project"""

# Importing the libraries

from ._version import __version__


def main() -> None:
    """This is the main function of the package"""
    print("This is the main function of the package")
    print(f"The version of the package is: {__version__}")


if __name__ == "__main__":
    main()
