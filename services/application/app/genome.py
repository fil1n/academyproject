import logging
from typing import Union

from sqlalchemy.exc import SQLAlchemyError

from data.relations import get_rna_to_rnd_relation, get_rna_codon_to_amino_acid_relation


def convert_dna_to_rna(dna_sequence: str, session) -> Union[str, None]:
    try:
        relation = get_rna_to_rnd_relation(session)
        rna_sequence = ''.join(relation.get(char) for char in dna_sequence)
        return rna_sequence
    except SQLAlchemyError as orm_error:
        logging.error(orm_error)
    except KeyError as key_error_exception:
        logging.error(key_error_exception)


def convert_rna_to_amino_acid(rna_sequence: str, session) -> Union[str, None]:
    try:
        relation = get_rna_codon_to_amino_acid_relation(session)
        sequence_size = 3 * (len(rna_sequence) // 3 - 1) + 1
        codons = tuple(rna_sequence[index: index + 3] for index in range(0, sequence_size, 3))
        amino_acid_sequence = ''.join(relation.get(codon, '.') for codon in codons)
        return amino_acid_sequence
    except SQLAlchemyError as orm_error:
        logging.error(orm_error)
    except KeyError as key_error_exception:
        logging.error(key_error_exception)
