#!/bin/bash

# Script: shuffle_numbers.sh
# Description: Shuffles an array of numbers from 1 to 10 and outputs them in a random order.
# Author: [Your Name]
# Date: [Date]

# Function to generate a random number within a specified range
random_number() {
    echo $((RANDOM % $1))
}

# Array containing numbers from 1 to 10
numbers=({1..10})
shuffled_numbers=()

# Shuffle the numbers array
while [ ${#numbers[@]} -gt 0 ]; do
    index=$(random_number ${#numbers[@]})
    shuffled_numbers+=("${numbers[index]}")
    unset 'numbers[index]'
    numbers=("${numbers[@]}")
done

# Output the shuffled numbers
for number in "${shuffled_numbers[@]}"; do
    echo "$number"
done

#if i can use seq and shuf
# #!/bin/bash
# command -v seq >/dev/null && command -v shuf >/dev/null || { echo "seq and/or shuf are required but not installed. Aborting."; exit 1; }
# numbers=$(seq 1 10)
# shuffled_numbers=$(shuf -e $numbers)
# echo "$shuffled_numbers"
