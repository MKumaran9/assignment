#!/bin/bash

FILE=$1

# find number of HTTP 200 errors
echo "The number of HTTP 200 errors is "
awk -F" " '{print $9}' $FILE | grep 200 | wc -l

# find number of different HTTP response codes
echo "List of HTTP response codes and their counts"
awk -F" " '{print $9}' $FILE | sort | uniq -c

exit 0
