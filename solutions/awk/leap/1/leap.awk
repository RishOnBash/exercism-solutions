#!/usr/bin/awk -f

{
    year = $1
    
    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
        print "true"
    } else {
        print "false"
    }
}
