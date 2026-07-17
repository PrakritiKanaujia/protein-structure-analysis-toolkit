# MAIN PROGRAM
clear
choice=y
while [ $choice = "y" ];do
clear
echo "3D PROTEIN STRUCTURE CATALOGUE"
echo "------------------------------"
echo "MENU"
echo "------------------------------"
echo "1. Retrieve Protein Data Bank File"
echo "2. Display Information from PDB File"
echo "3. Calculate Amino Acid Composition"
echo "4. Display Image File of Protein"
echo "5. Visualize 3D Protein Structure"
echo "6. Exit"
echo
echo "Enter your choice"
read ch
case $ch in
1) sh fetchpdb.sh;;
2) sh pdbinfo.sh;;
3) sh aacomp.sh;;
4) sh pdbimg.sh;;
5) sh viewpdb.sh;;
6) exit;;
*) echo "Invalid choice"
esac
echo "Do you want to return to menu?"
read choice
done
