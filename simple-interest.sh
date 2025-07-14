#!/bin/bash

# Simple Interest Calculator

if [ $# -ne 3 ]; then
  echo "Usage: $0 principal rate time"
  echo "Example: $0 1000 5 2"
  exit 1
fi

principal=$1
rate=$2
time=$3

interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "Simple Interest = $interest"
