#!/bin/bash

for i in *
do
    if [ $i == "cnvt.sh" ] 
    then 
        continue 
    fi

    expand -i -t 4 $i | sponge $i
done
