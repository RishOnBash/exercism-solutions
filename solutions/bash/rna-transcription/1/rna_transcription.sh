#!/usr/bin/env bash

INPUT=$1

[[ "$INPUT" =~ [^ATGC] ]] &&
    echo "Invalid nucleotide detected." &&
    exit 1
    
REV_C=$(tr 'ATGC' 'UACG' <<<"$INPUT")
echo "$REV_C"