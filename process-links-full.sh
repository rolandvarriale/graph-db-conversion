#!/bin/bash

for i in `ls`; do
	for j in `cat $i\/found_links.txt`; do
		echo "$i-[:linkTo]->$j
done 
