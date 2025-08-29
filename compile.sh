#!/bin/bash

clear
command=""
for var in "$@"
do
    command+=$var" "
done

echo "attempting compile of $command"

clang $command 
if [ $# -eq 0 ]
then
    echo "compile was not succesfull"
else
    echo "compile was succesfull, attempting to run now!"
    ./a.out
fi