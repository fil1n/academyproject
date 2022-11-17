from sqlalchemy import Column, Integer, String, ForeignKey

from sqlalchemy.orm import declarative_base, relationship

Base = declarative_base()


class RNABase(Base):
    __tablename__ = 'rna_bases'

    base_id = Column(Integer, primary_key=True)
    base = Column(String(1), nullable=False)
    dna_base_id = Column(Integer, ForeignKey('dna_bases.base_id'))
    related_dna_base = relationship('DNABase', back_populates='related_rna_base')


class DNABase(Base):
    __tablename__ = 'dna_bases'

    base_id = Column(Integer, primary_key=True)
    base = Column(String(1), nullable=False)
    related_rna_base = relationship('RNABase', back_populates='related_dna_base', uselist=False)


class RNACodon(Base):
    __tablename__ = 'rna_codons'

    codon_id = Column(Integer, primary_key=True, autoincrement=True)
    sequence = Column(String(3), nullable=False)
    amino_acid_id = Column(Integer, ForeignKey('amino_acids.amino_acid_id'))
    amino_acid = relationship('AminoAcid', back_populates='rna_codon', uselist=False)


class AminoAcid(Base):
    __tablename__ = 'amino_acids'

    amino_acid_id = Column(Integer, primary_key=True, autoincrement=True)
    sequence = Column(String(30), nullable=False)
    rna_codon = relationship('RNACodon', back_populates='amino_acid')
