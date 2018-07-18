#!/usr/bin/bash

touch cerealsummary.txt
echo "This is a summary of the Cereal Dastaset." >> cerealsummary.txt

echo "Example of Data:" >> cerealsummary.txt
cat cereal.csv | cut -d ";" -f 1,4-12 | grep [0-9] | head -n 10 >> cerealsummary.txt

echo "Cereals with the Most Calories:" >> cerealsummary.txt
cat cereal.csv | cut -d ";" -f 1,4 | sort -t ";" -k 2,2 -n -r | grep [0-9] | head -n 10 >> cerealsummary.txt

echo "Cereals with the Least Sugar:" >> cerealsummary.txt
cat cereal.csv | cut -d ";" -f 1,10 | sort -t ";" -k 2,2 -n | grep [0-9] | head -n 10 >> cerealsummary.txt

echo "List of Cereals with Wheat:" >> cerealsummary.txt
cat cereal.csv | cut -d ";" -f 1,4-12 | grep -i "wheat" >> cerealsummary.txt
