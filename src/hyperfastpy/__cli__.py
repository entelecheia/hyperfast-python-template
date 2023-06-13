"""Command line interface for hyperfastpy"""

# Importing the libraries

import click

from . import __version__


@click.command()
@click.version_option(__version__)
@click.option("--count", "-c", default=1, help="Number of greetings.")
@click.option("--name", "-n", prompt="Your name", help="The person to greet.")
def main(count, name):
    """This is the cli function of the package"""
    for _ in range(count):
        click.echo(f"Hello, {name}!")


if __name__ == "__main__":
    main()
