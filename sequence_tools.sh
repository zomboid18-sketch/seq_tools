#!/bin/bash

dna_seq=$1

#Convertir secuencias a mayusculas

dna_seq=$(echo "$dna_seq"|tr '[:lower:]' '[:upper:]')


 #DNA a RNA
rna_seq=$(echo "$dna_seq" | tr 'T' 'U')

#Complementaria
comp_seq=$(echo "$dna_seq" |tr 'ATCG ' 'TAGC')

#Complemetaria inversa 
rev_comp=$(echo "$comp_seq" |rev)

echo "DNA: $dna_seq"
echo "mRNA: $rna_seq"
echo "Complementaria: $comp_seq"
echo "comp. inversa: $rev_comp"
