#!/bin/bash

#Run this in the scrape root directory aka pageText/<root>/<sites>

for i in `ls`; do for j in `ls $i| grep -v found_links.txt`; do python3 ../htmlconvert.py "$i/$j" > ../json"/$i-$j.json"; done;done
 
