#!/usr/bin/env bash 

INPUT="$1"
[[ -n $(tr -d 'ACGT' <<<"$1") ]] &&
    echo "Invalid nucleotide in strand" &&
    exit 1
    
nt_arr=(A C G T)
for nt in "${nt_arr[@]}"; do 
    nts=$(tr -cd "$nt" <<<"$INPUT")
    echo "${nt}: ${#nts}"
done