#!/bin/bash

head -1

while read line; do
    
echo $line | cut -d"," -f3 | grep AAAA > /dev/null && echo $line

done
