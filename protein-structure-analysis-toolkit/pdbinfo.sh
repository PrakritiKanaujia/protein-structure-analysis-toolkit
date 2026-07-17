#SUBPROGRAM (2) TO EXTRACT INFORMATION FROM PDB FILE
#!/bin/bash
choice=y
while [ $choice = "y" ];do
clear
echo "DISPLAY INFORMATION FROM PDB FILE"
echo "----------------------------------"
cd /home/prakriti233/alt2/pdb
echo "PDB files in current working directory"
ls *.pdb
echo "----------------------------------"
echo "Enter PDB ID: \c"
read id
if [ -f "$id.pdb" ]; then
# Fetching information from the PDB file
title=$(grep "^TITLE" "$id.pdb" | awk '{$1=""; print}' | tr -d '\n')
protein_type=$(awk '/^HEADER/ { for (i = 2; i <= NF-2; ++i) printf $i" " }' "$id.pdb")
date_deposited=$(grep "^HEADER" "$id.pdb" | grep -oE '[0-9]{2}-[A-Z]{3}-[0-9]{2}')
organism=$(grep "^SOURCE.*ORGANISM_SCIENTIFIC:" "$id.pdb" | sed 's/^SOURCE\s*//' | awk '{$1=$2=""; print}' | tr -d '\n' | sed 's/^\s*//')
method_of_resolution=$(grep "^EXPDTA" "$id.pdb" | awk '{$1=""; print}' | tr -d '\n' | sed 's/^\s*//')
authors=$(grep "^AUTHOR" "$id.pdb" | awk '{$1=""; print}' | tr -d '\n' | sed 's/^\s*//')
resolution=$(grep "^REMARK   2 RESOLUTION." "$id.pdb" | awk '{print $4}')

# Printing the fetched information
echo "-----------------------------------"
echo "Title: $title"
echo "Type of Protein: $protein_type"
echo "Date Deposited: $date_deposited"
echo "Organism: $organism"
echo "Authors: $authors"
echo "Resolution: $resolution ANGSTROMS"
echo "Method of Resolution: $method_of_resolution"
echo "-----------------------------------"
echo "Do you want to display FASTA file of the sequence?"
read ch
if [ $ch = "y" ];then
cd /home/prakriti233/alt2/fasta
if [ -f $id.fasta ];then
echo
cat $id.fasta
else
echo "FASTA File not found!"
fi
fi
cd /home/prakriti233/alt2
else
echo "File not found!"
fi
echo "Do you want to enter another file?"
read choice
done
