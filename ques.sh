#!/bin/bash

declare -A computations

read -p "Enter value for a: " a
read -p "Enter value for b: " b
read -p "Enter value for c: " c

computations[1]=$((a + b * c))
computations[2]=$((a * b + c))
computations[3]=$((c + b / a))
computations[4]=$((a % b + c))

results=()

for i in ${!computations[@]}; do
  results+=(${computations[$i]})
done

echo "Dictionary of computations: ${computations[@]}"
echo "Array of results: ${results[@]}"


sorted_asc=($(printf "%s\n" ${results[@]} | sort -n))
echo "Sorted Array in ascending order: ${sorted_asc[@]}"


sorted_desc=($(printf "%s\n" ${results[@]} | sort -nr))
echo "Sorted Array in descending order: ${sorted_desc[@]}"
