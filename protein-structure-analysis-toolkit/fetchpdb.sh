#SUBPROGRAM (1) TO FETCH PDB FILE
choice=y
while [ $choice = "y" ];do
clear
echo "WELCOME TO Protein Data Bank"
echo "-----------------------------------------"
echo "Enter PDB accession ID to download file: \c"
read id
cd pdb
echo "------------------------------------------"
curl "https://files.rcsb.org/view/$id.pdb">$id.pdb
if [ -f $id.pdb ]
then
echo "------------------------------------------"
echo "$id.pdb retrieved successfully"
else
echo "------------------------------------------"
echo "Unable to retrieve file. Please try again."
fi
cd /home/prakriti233/alt2
echo "------------------------------------------"
echo "Do you want to download sequence in FASTA format?"
read ch
cd fasta
if [ $ch = "y" ]
then
echo "------------------------------------------"
curl "https://www.rcsb.org/fasta/entry/$id/display">$id.fasta
if [ -f $id.fasta ]
then
echo "------------------------------------------"
echo "Sequence retrieved successfully"
else
echo "------------------------------------------"
echo "Unable to retrive sequence. Please try again."
fi
fi
cd /home/prakriti233/alt2
echo "-----------------------------------------" 
echo "Do you want to save image file of the structure?"
read ch1
cd images
if [ $ch1 = "y" ];then
echo "-----------------------------------------"
wget https://cdn.rcsb.org/images/structures/"$id"_assembly-1.jpeg
mv ""$id"_assembly-1.jpeg" "$id.jpeg"
if [ -f $id.jpeg ];then
echo "-----------------------------------------"
echo "Image file saved"
else
echo "-----------------------------------------"
echo "Unable to retrieve image file. Please try again."
fi
fi
echo "-----------------------------------------"
cd /home/prakriti233/alt2
echo "Do you want to download more files?"
read choice
done
