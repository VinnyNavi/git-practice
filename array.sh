#!/bin/bash

#index starts from zero , array size is 3
FRUITS=("Apple" "Kiwi" "Orange")#array
echo "First fruit is: ${FRUITS[0]}"
echo "First fruit is: ${FRUITS[1]}"
echo "First fruit is: ${FRUITS[2]}"
echo "All fruits are: ${FRUITS[@]}"
