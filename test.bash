#!/bin/bash

sorted_numbers=($(bash shuffle_numbers.bash | sort -n))
unique_numbers=$(echo "${sorted_numbers[@]}" | tr ' ' '\n' | uniq | wc -l)

if [ ${unique_numbers} -eq 10 ]; then
    echo "All numbers are present and unique."
else
    echo "Some numbers are missing or not unique."
fi
# Test 2: Checking if the numbers are shuffled
original_sequence=({1..10})
shuffled_sequence=($(bash shuffle_numbers.bash))

if [ "${original_sequence[*]}" != "${shuffled_sequence[*]}" ]; then
    echo "Numbers are shuffled."
else
    echo "Numbers are not shuffled."
fi
