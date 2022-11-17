PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: amino_acids
CREATE TABLE amino_acids (
	amino_acid_id INTEGER NOT NULL, 
	sequence VARCHAR(30) NOT NULL, 
	PRIMARY KEY (amino_acid_id)
);
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (1, 'F');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (2, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (3, 'I');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (4, 'V');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (5, 'F');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (6, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (7, 'I');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (8, 'V');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (9, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (10, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (11, 'I');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (12, 'V');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (13, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (14, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (15, 'M');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (16, 'V');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (17, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (18, 'P');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (19, 'T');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (20, 'A');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (21, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (22, 'P');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (23, 'T');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (24, 'A');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (25, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (26, 'P');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (27, 'T');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (28, 'A');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (29, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (30, 'P');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (31, 'T');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (32, 'A');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (33, 'Y');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (34, 'H');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (35, 'N');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (36, 'D');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (37, 'Y');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (38, 'H');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (39, 'N');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (40, 'D');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (41, 'Q');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (42, 'K');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (43, 'E');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (44, 'G');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (45, 'Q');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (46, 'K');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (47, 'E');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (48, 'G');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (49, 'C');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (50, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (51, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (52, 'G');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (53, 'C');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (54, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (55, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (56, 'G');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (57, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (58, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (59, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (60, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (61, 'W');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (62, 'F');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (63, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (64, 'I');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (65, 'V');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (66, 'F');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (67, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (68, 'I');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (69, 'V');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (70, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (71, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (72, 'I');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (73, 'V');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (74, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (75, 'L');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (76, 'M');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (77, 'V');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (78, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (79, 'P');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (80, 'T');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (81, 'A');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (82, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (83, 'P');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (84, 'T');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (85, 'A');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (86, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (87, 'P');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (88, 'T');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (89, 'A');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (90, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (91, 'P');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (92, 'T');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (93, 'A');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (94, 'Y');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (95, 'H');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (96, 'N');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (97, 'D');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (98, 'Y');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (99, 'H');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (100, 'N');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (101, 'D');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (102, 'Q');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (103, 'K');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (104, 'E');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (105, 'G');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (106, 'Q');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (107, 'K');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (108, 'E');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (109, 'G');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (110, 'C');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (111, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (112, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (113, 'G');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (114, 'C');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (115, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (116, 'S');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (117, 'G');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (118, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (119, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (120, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (121, 'R');
INSERT INTO amino_acids (amino_acid_id, sequence) VALUES (122, 'W');

-- Table: dna_bases
CREATE TABLE dna_bases (
	base_id INTEGER NOT NULL, 
	base VARCHAR(1) NOT NULL, 
	PRIMARY KEY (base_id)
);
INSERT INTO dna_bases (base_id, base) VALUES (1, 'A');
INSERT INTO dna_bases (base_id, base) VALUES (2, 'T');
INSERT INTO dna_bases (base_id, base) VALUES (3, 'C');
INSERT INTO dna_bases (base_id, base) VALUES (4, 'G');
INSERT INTO dna_bases (base_id, base) VALUES (5, 'A');
INSERT INTO dna_bases (base_id, base) VALUES (6, 'T');
INSERT INTO dna_bases (base_id, base) VALUES (7, 'C');
INSERT INTO dna_bases (base_id, base) VALUES (8, 'G');

-- Table: rna_bases
CREATE TABLE rna_bases (
	base_id INTEGER NOT NULL, 
	base VARCHAR(1) NOT NULL, 
	dna_base_id INTEGER, 
	PRIMARY KEY (base_id), 
	FOREIGN KEY(dna_base_id) REFERENCES dna_bases (base_id)
);
INSERT INTO rna_bases (base_id, base, dna_base_id) VALUES (1, 'A', 1);
INSERT INTO rna_bases (base_id, base, dna_base_id) VALUES (2, 'U', 2);
INSERT INTO rna_bases (base_id, base, dna_base_id) VALUES (3, 'C', 3);
INSERT INTO rna_bases (base_id, base, dna_base_id) VALUES (4, 'G', 4);
INSERT INTO rna_bases (base_id, base, dna_base_id) VALUES (5, 'A', NULL);
INSERT INTO rna_bases (base_id, base, dna_base_id) VALUES (6, 'U', NULL);
INSERT INTO rna_bases (base_id, base, dna_base_id) VALUES (7, 'C', NULL);
INSERT INTO rna_bases (base_id, base, dna_base_id) VALUES (8, 'G', NULL);

-- Table: rna_codons
CREATE TABLE rna_codons (
	codon_id INTEGER NOT NULL, 
	sequence VARCHAR(3) NOT NULL, 
	amino_acid_id INTEGER, 
	PRIMARY KEY (codon_id), 
	FOREIGN KEY(amino_acid_id) REFERENCES amino_acids (amino_acid_id)
);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (1, 'UUU', 1);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (2, 'CUU', 2);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (3, 'AUU', 3);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (4, 'GUU', 4);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (5, 'UUC', 5);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (6, 'CUC', 6);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (7, 'AUC', 7);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (8, 'GUC', 8);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (9, 'UUA', 9);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (10, 'CUA', 10);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (11, 'AUA', 11);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (12, 'GUA', 12);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (13, 'UUG', 13);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (14, 'CUG', 14);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (15, 'AUG', 15);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (16, 'GUG', 16);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (17, 'UCU', 17);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (18, 'CCU', 18);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (19, 'ACU', 19);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (20, 'GCU', 20);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (21, 'UCC', 21);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (22, 'CCC', 22);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (23, 'ACC', 23);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (24, 'GCC', 24);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (25, 'UCA', 25);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (26, 'CCA', 26);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (27, 'ACA', 27);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (28, 'GCA', 28);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (29, 'UCG', 29);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (30, 'CCG', 30);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (31, 'ACG', 31);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (32, 'GCG', 32);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (33, 'UAU', 33);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (34, 'CAU', 34);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (35, 'AAU', 35);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (36, 'GAU', 36);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (37, 'UAC', 37);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (38, 'CAC', 38);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (39, 'AAC', 39);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (40, 'GAC', 40);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (41, 'CAA', 41);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (42, 'AAA', 42);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (43, 'GAA', 43);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (44, 'GGU', 44);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (45, 'CAG', 45);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (46, 'AAG', 46);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (47, 'GAG', 47);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (48, 'GGC', 48);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (49, 'UGU', 49);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (50, 'CGU', 50);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (51, 'AGU', 51);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (52, 'GGG', 52);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (53, 'UGC', 53);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (54, 'CGC', 54);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (55, 'AGC', 55);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (56, 'GGA', 56);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (57, 'CGA', 57);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (58, 'AGA', 58);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (59, 'AGG', 59);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (60, 'CGG', 60);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (61, 'UGG', 61);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (62, 'UUU', 62);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (63, 'CUU', 63);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (64, 'AUU', 64);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (65, 'GUU', 65);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (66, 'UUC', 66);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (67, 'CUC', 67);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (68, 'AUC', 68);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (69, 'GUC', 69);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (70, 'UUA', 70);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (71, 'CUA', 71);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (72, 'AUA', 72);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (73, 'GUA', 73);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (74, 'UUG', 74);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (75, 'CUG', 75);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (76, 'AUG', 76);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (77, 'GUG', 77);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (78, 'UCU', 78);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (79, 'CCU', 79);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (80, 'ACU', 80);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (81, 'GCU', 81);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (82, 'UCC', 82);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (83, 'CCC', 83);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (84, 'ACC', 84);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (85, 'GCC', 85);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (86, 'UCA', 86);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (87, 'CCA', 87);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (88, 'ACA', 88);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (89, 'GCA', 89);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (90, 'UCG', 90);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (91, 'CCG', 91);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (92, 'ACG', 92);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (93, 'GCG', 93);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (94, 'UAU', 94);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (95, 'CAU', 95);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (96, 'AAU', 96);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (97, 'GAU', 97);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (98, 'UAC', 98);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (99, 'CAC', 99);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (100, 'AAC', 100);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (101, 'GAC', 101);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (102, 'CAA', 102);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (103, 'AAA', 103);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (104, 'GAA', 104);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (105, 'GGU', 105);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (106, 'CAG', 106);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (107, 'AAG', 107);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (108, 'GAG', 108);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (109, 'GGC', 109);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (110, 'UGU', 110);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (111, 'CGU', 111);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (112, 'AGU', 112);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (113, 'GGG', 113);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (114, 'UGC', 114);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (115, 'CGC', 115);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (116, 'AGC', 116);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (117, 'GGA', 117);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (118, 'CGA', 118);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (119, 'AGA', 119);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (120, 'AGG', 120);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (121, 'CGG', 121);
INSERT INTO rna_codons (codon_id, sequence, amino_acid_id) VALUES (122, 'UGG', 122);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
