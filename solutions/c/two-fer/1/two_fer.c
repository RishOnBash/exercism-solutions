#include "two_fer.h"
#include <stdio.h>

void two_fer(char *buffer, const char *name) {
    // If name is NULL or empty, use "you"
    if (name == NULL) {
        name = "you";
    }
    sprintf(buffer, "One for %s, one for me.", name);
}