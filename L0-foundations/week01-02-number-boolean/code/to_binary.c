//
// Created by Ashutosh Pandey on 6/15/26.
//

#include <stdio.h>

int main (void) {
    int a = 13;
    while (a > 0 ) {
        printf("%d\n", a % 2);
        a = a / 2;
    }
}