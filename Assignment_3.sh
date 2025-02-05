#!/bin/bash
#1
sed '/[Zz][Oo][Oo]/d' /Users/benecia/Desktop/pandas.tsv > /Users/benecia/Desktop/panda_zoos.txt

#2
awk '{print $1, $4, $2}' /Users/benecia/Desktop/pandas.tsv | sort -k3 > /Users/benecia/Desktop/sorted_pandas.txt

#3
awk '{print $5}' /Users/benecia/Desktop/pandas.tsv | sort | uniq > /Users/benecia/Desktop/panda_zoos_A2Z.txt

#4
sed -e 's/female/F/g' -e 's/male/M/g'  /Users/benecia/Desktop/pandas.tsv > /Users/benecia/Desktop/panda_m_f.txt

#5
grep -c "October" /Users/benecia/Desktop/pandas.tsv

#6
grep -n '^' /Users/benecia/Desktop/pandas.tsv | sed 's/:/ /' > /Users/benecia/Desktop/panda_names.txt

#7
sed -n -e '1p' -e '6p' -e '17p' /Users/benecia/Desktop/pandas.tsv > /Users/benecia/Desktop/lines_1_6_17.txt

#8
grep -i "x" /Users/benecia/Desktop/pandas.tsv > /Users/benecia/Desktop/x_lines.txt

#9
awk '{print $5}' /Users/benecia/Desktop/pandas.tsv | sort | uniq > /Users/benecia/Desktop/unique_places.txt

#10
awk '$4 <= 10' pandas.tsv | awk '{print $1, $4}' | sort -k2 > /Users/benecia/Desktop/young_pandas.txt