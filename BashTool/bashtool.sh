#!/usr/bin/env bash

#this a function that act as a place holder for now, which will be implemented later
function count() {
    echo "Hello developer!"
    for (( i=1 ; i<=$1 ; i++ )); 
    do
        echo $i
    done
}

count $1
