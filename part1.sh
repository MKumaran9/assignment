#!/bin/bash

FILE=$1

echo "The number of HTTP 200 errors is "
awk -F" " '{print $9}' $FILE | grep 200 | wc -l


echo "List of HTTP response codes and their counts"
awk -F" " '{print $9}' $FILE | sort | uniq -c

exit 0
