#!/usr/bin/awk -f

BEGIN {
    map["G"] = "C"
    map["C"] = "G"
    map["T"] = "A"
    map["A"] = "U"
}
{
    if ($0 ~ /[^GCTA]/) {
        print "Invalid nucleotide detected."
        exit 1
    }

    rna = ""
    for (i=1; i<=length($0); i++) {
        rna = rna map[substr($0, i, 1)]
    }
    print rna
}