#SUBPROGRAM (5) TO VISUALIZE PDB FILE USING PYMOL

choice=y
while [ $choice = "y" ]; do
clear
echo "VISUALIZE 3D STRUCTURE OF THE PROTEIN"
echo "--------------------------------"
cd /home/prakriti233/alt2/pdb
echo "PDB Files in current working directory:"
ls *.pdb
echo
echo "Enter PDB File: \c"
read id
if [ -f $id ];then
echo
pymol $id
echo
else
echo "File does not exist"
fi
echo "---------------------------------"
echo "Do you want to view more files?"
read choice
done

