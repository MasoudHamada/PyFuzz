#!/bin/bash
while read -r param; do
    for i in {0..99}; do
        echo "?${param}=${i}"
    done
done < burp-parameter-names.txt > parameters_with_values.txt
