from myApp.commands.command2 import command2_function


def test_command2_function():
    assert command2_function() == "Executing Command 2"
