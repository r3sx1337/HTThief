#!/bin/bash
#
#
### Checking if you running as root

if [ "$(id -u)" -ne 0 ]; then 
        echo "Please run as root." >&2
        exit 1
fi


### checking if Apache is running

if /etc/init.d/apache2 status | grep running; then 
         
        ### Clearing the access.log

        echo " " > /var/log/apache2/access.log

        ### Manipulating the data row received
        cut -f2 /var/log/apache2/access.log -d\" | cut -f2 -d " " | sed 's/^\///' > received.txt


        ### Transforming the data row received on a final file
        cat received.txt | base64 -d > final.txt
else 
        echo "Exit. Your Apache isn't running" 
fi

