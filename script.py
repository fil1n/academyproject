import logging

from data.relations import (
    get_rna_to_rnd_relation,
    get_rna_codon_to_amino_acid_relation
)


def convert_dna_to_rna(dna: str, session) -> str:
    try:
        relation = get_rna_to_rnd_relation(session)
        rna = ''.join(relation.get(char) for char in dna)
        return rna
    except Exception as e:
        logging.error(e)


def convert_rna_to_protein(rna: str, session) -> str:
    try:
        relation = get_rna_codon_to_amino_acid_relation(session)
        sequence_size = 3 * (len(rna) // 3 - 1) + 1
        codons = tuple(rna[index: index + 3] for index in range(0, sequence_size, 3))
        amino_acid = ''.join(relation.get(codon, '.') for codon in codons)
        return amino_acid
    except Exception as e:
        logging.error(e)
