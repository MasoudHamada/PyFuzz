#!/bin/bash

# Ensure both input files exist
if [ ! -f raft-large-directories-lowercase.txt ]; then
    echo "File raft-large-directories-lowercase.txt not found!"
    exit 1
fi

if [ ! -f raft-large-files-lowercase.txt ]; then
    echo "File raft-large-files-lowercase.txt not found!"
    exit 1
fi

# Combine the files, add / before each line, and output to combined_with_prefix.txt
{ cat raft-large-directories-lowercase.txt raft-large-files-lowercase.txt; } | sed 's/^/\//' > combined_with_prefix.txt

echo "Combined file with prefixed slashes generated."
