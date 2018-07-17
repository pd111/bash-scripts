#!/usr/bin/bash

echo "This is my first bash script"
echo ""

echo "Max: " > summary.txt
cat cars.csv | tail -n+3 | cut -d ";" -f1,2 | sort -gk 2,2 -t ";"| tail -n 1 >> summary.txt
echo "Min: " >> summary.txt
cat cars.csv | tail -n+3 | cut -d ";" -f1,2 | sort -gk 2,2 -t ";"| head -n 8 >> summary.txt
Echo "List of countries of origin:" >> summary.txt
cat cars.csv | cut -d ";" -f9 | sort -u >> summary.txt

#a comment line

#This is a test
