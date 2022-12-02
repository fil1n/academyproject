import logging
from typing import Union

from sqlalchemy.exc import SQLAlchemyError

from app.data.relations import (
    get_rna_codon_to_amino_acid_relation,
    get_rna_to_rnd_relation
)


def convert_dna_to_rna(dna: str, session) -> Union[str, None]:
    try:
        relation = get_rna_to_rnd_relation(session)
        rna = ''.join(relation.get(char) for char in dna)
        return rna
    except SQLAlchemyError as orm_error:
        logging.error(orm_error)
    except KeyError as key_error_exception:
        logging.error(key_error_exception)


def convert_rna_to_amino_acid(rna: str, session) -> Union[str, None]:
    try:
        relation = get_rna_codon_to_amino_acid_relation(session)
        sequence_size = 3 * (len(rna) // 3 - 1) + 1
        codons = tuple(
            rna[index: index + 3] for index in range(0, sequence_size, 3)
        )
        amino_acid = ''.join(relation.get(codon, '.') for codon in codons)
        return amino_acid
    except SQLAlchemyError as orm_error:
        logging.error(orm_error)
    except KeyError as key_error_exception:
        logging.error(key_error_exception)
