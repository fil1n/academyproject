import unittest
from pathlib import Path

from services.application.app.plot import draw_plot, PlotOptions

# get abs path of project root
basedir = Path(__file__).parents[1]


class DrawPlotTest(unittest.TestCase):
    def test_image_creation(self):
        payload = 'ATTTGGCTACTAACAATCTA'
        draw_plot(payload, step=2, base_dir=basedir)
        file = PlotOptions.generate_file_path(basedir)
        self.assertTrue(Path(file).is_file())

    def test_non_numeric_input(self):
        """ function should raise ValueError after getting invalid value """
        payload = 'gjgjkjkg1232323DDD'
        self.assertRaises(ValueError, draw_plot, payload, base_dir=basedir)

    def test_step_size(self):
        """ step must be less or equal to genome length """
        # payload length less than default step size (100)
        payload = 'ATTTGGCTACTAACAATCTA'
        self.assertRaises(ValueError, draw_plot, payload, base_dir=basedir)


if __name__ == '__main__':
    unittest.main()
