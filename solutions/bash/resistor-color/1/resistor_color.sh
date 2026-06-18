#!/usr/bin/env bash 

colors=("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white")

command="$1"

if [[ "$command" == "colors" ]]; then
    for color in "${colors[@]}"; do
        echo "$color"
    done

elif [[ "$command" == "code" ]]; then
    target_color="$2"
    
    for i in "${!colors[@]}"; do
        if [[ "${colors[$i]}" == "$target_color" ]]; then
            echo "$i"
            exit 0
        fi
  done 
fi
