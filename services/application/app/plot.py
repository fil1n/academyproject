from collections import defaultdict

import matplotlib.pyplot as plt
import numpy as np


class PlotOptions:
    title = 'G-C content metric'
    vertical_axis_name = 'G-C Ratio (%)'
    horizontal_axis_name = 'Genome Position'


def calculate_ratio(sequence: str):
    bases = defaultdict(lambda: 0)
    for char in sequence:
        bases[char] += 1
    gbase_num, cbase_num = bases.get('G', 0), bases.get('C', 0)
    result = (gbase_num + cbase_num) / sum(bases.values()) * 100
    return result


def draw_plot(genome: str, step: int = 100, file_path: str = 'images/plot.jpeg'):
    map_func = np.vectorize(
        lambda index: calculate_ratio(genome[index - 1:index + step - 1])
    )

    horizontal_axis = np.arange(1, len(genome) + 1)
    vertical_axis = map_func(horizontal_axis)

    plt.title(PlotOptions.title)
    plt.xlabel(PlotOptions.horizontal_axis_name)
    plt.ylabel(PlotOptions.vertical_axis_name)
    plt.axis([0, len(genome), 0, 100])
    plt.plot(horizontal_axis, vertical_axis)
    plt.savefig(file_path)
