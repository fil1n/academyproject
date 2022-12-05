import logging
from typing import Union


def convert_dna_to_rna(dna: str, relation: dict) -> Union[str, None]:
    try:
        rna = ''.join(relation.get(char) for char in dna)
        return rna
    except TypeError as type_error:
        logging.error(type_error)
    except KeyError as key_error_exception:
        logging.error(key_error_exception)


def convert_rna_to_amino_acid(rna: str, relation: dict) -> Union[str, None]:
    try:
        sequence_size = 3 * (len(rna) // 3 - 1) + 1
        codons = tuple(
            rna[index: index + 3] for index in range(0, sequence_size, 3)
        )
        amino_acid = ''.join(relation.get(codon) for codon in codons)
        return amino_acid
    except TypeError as type_error:
        logging.error(type_error)
    except KeyError as key_error_exception:
        logging.error(key_error_exception)
