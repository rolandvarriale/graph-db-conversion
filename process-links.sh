#!/bin/bash
rm output.txt

echo "\"db[\" +" > output.txt


for i in `ls`; do
	echo "$i"|sed -e "s/-//g" >> tempsitelist.txt;
	for j in `cat $i\/found_links.txt |sed -e "s/-//g"`; do
		echo "$j" >> tempsitelist.txt;
		echo "\"($i)-[:linkTo]->($j)\" +" >> temp.txt;
		echo "\"($j)-[:linkFrom]->($i)\" +" >> temp.txt;
done 
done
for k in `cat sitelist.txt`; do echo "\"($k:site {name:\\\"$k\\\"})\" +" >> output.txt; done
cat temp.txt | sort | uniq >> output.txt
rm temp.txt
cat tempsitelist.txt | sort | uniq > sitelist.txt
echo "\"]\";" >> output.txt
cat output.txt | sed -e "s/\.//g" > graph-new.db
rm tempsitelist.txt
rm output.txt
rm sitelist.txt
