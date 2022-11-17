from data.schemes import DNABase, RNACodon


def get_rna_to_rnd_relation(session) -> dict:
    dna_bases = session.query(DNABase).all()
    relations = {
        dna_base.base: dna_base.related_rna_base.base for dna_base in dna_bases
    }
    return relations


def get_rna_codon_to_amino_acid_relation(session) -> dict:
    rna_codons = session.query(RNACodon).all()
    relations = {
        codon.sequence: codon.amino_acid.sequence for codon in rna_codons
    }
    return relations
