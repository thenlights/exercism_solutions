"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language:
https://en.wikipedia.org/wiki/Guido_van_Rossum

This is a module docstring, used to describe the functionality
of a module and its functions and/or classes.
"""

EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2

def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """

    return EXPECTED_BAKE_TIME - elapsed_bake_time


def preparation_time_in_minutes(number_of_layers):
    """Calculate the bake time remaining.

    :param number_of_layers: int - number of layers to add to the pasta.
    :return: int - the expected preparation time (in minutes).

    Function that the expected preparation time considering a time of `PREPARATION_TIME` minutes per layer.
    """

    return PREPARATION_TIME * number_of_layers


def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate the bake time remaining.

    :param number_of_layers: int - the number of layers added to the lasagna
    :param elapsed_bake_time: int - the number of minutes the lasagna has spent baking in the oven already
    :return: int - the timer spent in the kitchen (in minutes).

    Function that returns the total minutes you have been in the kitchen 
    cooking — your preparation time layering + the time the lasagna has 
    spent baking in the oven.
    """

    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time