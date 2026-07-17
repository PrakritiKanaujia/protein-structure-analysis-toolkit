#SUBPROGRAM (4) TO DISPLAY IMAGE FILE

choice=y
while [ $choice = "y" ];do
clear
echo "TO DISPLAY IMAGE OF PROTEIN"
echo "----------------------------"
cd /home/prakriti233/alt2/images
echo "Image files in current working directory:\n"
ls *.jpeg
echo "---------------------------"
echo "Enter Image file: \c"
read file
if [ -f $file ];then
echo "---------------------------"
feh $file
else
echo "File not found."
fi
cd /home/prakriti233/alt2
echo "Do you want to view another file?"
read choice
done 
