#!/bin/bash

heads=0
tails=0
while [[ $heads -lt 21 && $tails -lt 21 ]]; do
  flip=$((RANDOM % 2))
  if [[ $flip -eq 0 ]]; then
	echo "Heads!"
    ((heads++))
  else
	echo "Tails!"
    ((tails++))
  fi
done
if [[ $heads -eq 21 ]]; then
  echo "Heads wins!"
  echo "Tails fell short by " $(( 21 - tails ))
else
  echo "Tails wins!"
  echo "Heads fell short by " $(( 21 - heads ))
fi
