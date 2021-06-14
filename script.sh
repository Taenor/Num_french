#!/bin/bash

data=$( bash <<EOF 
find /home/estinou/DataSet/Q21-fra-French/*/$1.ogg
EOF
)
#echo $data
for i in $data
do 
   
   #echo $i
   folder=$(basename $(dirname $i))
   echo "~/DataSet/Num_french/"$1"-"$folder".ogg"
   cp $i ~/DataSet/Num_french/"$1"-"$folder".ogg
done 
