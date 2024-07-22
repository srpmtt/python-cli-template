import click
from commands.command1 import command1_function
from commands.command2 import command2_function


@click.command()
def command1():
    result = command1_function()
    click.echo(result)


@click.command()
def command2():
    result = command2_function()
    click.echo(result)


@click.group()
def main():
    click.echo("Hello, this is my CLI application!")


main.add_command(command1)
main.add_command(command2)

if __name__ == '__main__':
    main()
