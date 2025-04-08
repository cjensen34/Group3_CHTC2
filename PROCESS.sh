#!/bin/bash

for file in ./x*; do
    tr '[:upper:]' '[:lower:]' < "$file" | 
    sed 's/[[:punct:]]//g' | 
    tr -s '[:space:]' '\n' |
    grep -v '^\s*$' | 
    sort > "${file}_sorted"
done
