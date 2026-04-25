#!/usr/bin/awk -f

{
    # get all fields from STDIN or file
    name = $0
}

# END block runs after AWK has finished reading all files or STDIN
END {
    # if NR (lines) is 0, no name was found
    if (NR == 0 || name == "") {
        print "One for you, one for me."
    } else {
        printf("One for %s, one for me.\n", name)
    }
}