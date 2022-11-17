""" Test script to demonstrate functions correct work """

# !/usr/bin/python

from data.db import Session
from script import convert_rna_to_amino_acid, convert_dna_to_rna
from sqlalchemy.exc import SQLAlchemyError

dna_sequence_payload = {
    'ATTTGGCTACTAACAATCTA': 'AUUUGGCUACUAACAAUCUA',
    'GTTGTAATGGCCTACATTA': 'GUUGUAAUGGCCUACAUUA',
    'CAGGTGGTGTTGTTCAGTT': 'CAGGUGGUGUUGUUCAGUU',
    'GCTAACTAAC': 'GCUAACUAAC',
    'GCTAACTAACATCTTTGGCACTGTT': 'GCUAACUAACAUCUUUGGCACUGUU',
    'TATGAAAAACTCAAA': 'UAUGAAAAACUCAAA',
    'CCCGTCCTTGATTGGCTTGAAGAGAAGTTT': 'CCCGUCCUUGAUUGGCUUGAAGAGAAGUUU'
}

rna_sequence_payload = {
    'AUUUGGCUACUAACAAUCUA': 'IWLLTI',
    'GUUGUAAUGGCCUACAUUA': 'VVMAYI',
    'CAGGUGGUGUUGUUCAGUU': 'QVVLFS',
    'GCUAACUAAC': 'AN.',
    'GCUAACUAACAUCUUUGGCACUGUU': 'AN.HLWHC',
    'UAUGAAAAACUCAAA': 'YEKLK',
    'CCCGUCCUUGAUUGGCUUGAAGAGAAGUUU': 'PVLDWLEEKF'
}


def main() -> None:
    print('[DNA to RNA sequence conversion tests]')
    with Session() as session:
        for sequence in dna_sequence_payload:
            rna_sequence = convert_dna_to_rna(sequence, session)
            if rna_sequence is None:
                raise SQLAlchemyError
            print(f'{sequence} -> {rna_sequence} [correct answer {dna_sequence_payload.get(sequence)}]')

    print('[RNA to Amino Acid sequence]')
    with Session() as session:
        for sequence in rna_sequence_payload:
            amino_acid_sequence = convert_rna_to_amino_acid(sequence, session)
            if amino_acid_sequence is None:
                raise SQLAlchemyError
            print(f'{sequence} -> {amino_acid_sequence} [correct answer {rna_sequence_payload.get(sequence)}]')


if __name__ == '__main__':
    main()
