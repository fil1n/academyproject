import unittest

from services.application.app.genome import convert_dna_to_rna

relation = {
    'A': 'A',
    'T': 'U',
    'C': 'C',
    'G': 'G'
}


class TestDNAConversion(unittest.TestCase):
    def basic(self):
        payload = 'GCTAACTAAC'
        expected = 'GCUAACUAAC'
        output = convert_dna_to_rna(
            payload,
            relation
        )
        self.assertEqual(expected, output)

    def test_None_input(self):
        payload = None
        expected = None
        output = convert_dna_to_rna(
            payload,
            relation
        )
        self.assertEqual(output, expected)

    def test_empty_relation(self):
        payload = 'GCTAACTAAC'
        expected = None
        output = convert_dna_to_rna(
            payload,
            {}
        )
        self.assertEqual(output, expected)


if __name__ == '__main__':
    unittest.main()
