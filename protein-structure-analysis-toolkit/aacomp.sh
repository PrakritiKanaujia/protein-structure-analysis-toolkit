#SUBPROGRAM (3) TO CALCULATE AMINO ACID COMPOSITION
#!/bin/bash
choice=y
while [ $choice = "y" ];do
clear
echo "TO CALCULATE AMINO ACID COMPOSITION"
echo "------------------------------------"
cd /home/prakriti233/alt2/fasta/
echo "FASTA files in current working directory:"
ls *.fasta
echo "------------------------------------"
echo "Enter FASTA file: \c"
read file
if [ -f $file ]; then
sequence=$(grep -v ">" $file | tr -d "\n")
# Function to count amino acid occurrences
count_amino_acids() {
    local sequence=$1
    local amino_acid=$2
    local count=$(echo $sequence | grep -o $amino_acid | wc -l)
    echo "$amino_acid: $count"
}
echo "-----------------------------------"
echo "AMINO ACID COMPOSTION"
# Iterate over amino acids and count occurrences
for aa in A R N D C Q E G H I L K M F P S T W Y V; do
    count=$(count_amino_acids "$sequence" "$aa")
    echo $count
done
else
echo "File not found!"
fi
cd /home/prakriti233/alt2
echo "-------------------------------------"
echo "Do you want to enter another file?"
read choice
done
