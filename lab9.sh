#!/bin/bash

args=( "$@" )
n_args=${#args[@]}
sum=0
for (( i=1; i<n_args+1; i++ ));
do
   sum=$((sum+args[i-1]))
done

echo -n "average of the $n_args numbers is: "
echo "$sum / $n_args.0" | bc -l
