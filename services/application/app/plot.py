from collections import defaultdict
from datetime import datetime
from pathlib import Path
from typing import Union

import matplotlib.pyplot as plt
import numpy as np


class PlotOptions:
    title = 'G-C content metric'
    vertical_axis_name = 'G-C Ratio (%)'
    horizontal_axis_name = 'Genome Position'

    @staticmethod
    def generate_file_path(base_dir: Union[str, Path] = '.'):
        current_date = datetime.today().strftime('%Y-%m-%d-%H:%M')
        return f'{base_dir}/images/plot-{current_date}.jpeg'


def calculate_ratio(sequence: str) -> float:
    bases = defaultdict(lambda: 0)
    for char in sequence:
        bases[char] += 1
    return (bases.get('G', 0) + bases.get('C', 0)) / sum(bases.values()) * 100


def draw_plot(genome: str, step: int = 100,
              base_dir: Union[str, Path] = '.') -> None:
    if genome is None or not genome.isalpha() or not genome.isupper():
        raise ValueError

    if len(genome) < step:
        raise ValueError

    map_ratio = np.vectorize(
        lambda index: calculate_ratio(genome[index - 1:index + step - 1])
    )

    # preparing dataset for plot
    border = (len(genome) + 1) // step * step
    horizontal_axis = np.arange(1, border, step)
    vertical_axis = map_ratio(horizontal_axis)

    # passing plot options to matplotlib & save figure
    plt.title(PlotOptions.title)
    plt.xlabel(PlotOptions.horizontal_axis_name)
    plt.ylabel(PlotOptions.vertical_axis_name)
    plt.plot(horizontal_axis, vertical_axis)
    plt.savefig(PlotOptions.generate_file_path(base_dir))
