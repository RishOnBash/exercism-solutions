#!/usr/bin/env bash

if [[ $# -ne 1 ]] || [[ ! "$1" =~ ^[0-9]+$ ]]; then
    { echo "Usage: leap.sh <year>"; exit 1; }
fi

YEAR=$1

if ((YEAR % 400 == 0)) || ((YEAR % 4 == 0 && YEAR % 100 != 0)); then
    echo "true"
else
    echo "false"
fi