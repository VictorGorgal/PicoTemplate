#include "pico/stdlib.h"
#include <stdio.h>

int main() {
    stdio_init_all();

    sleep_ms(2000);
    printf("Starting program...\n");

    // Code

    printf("Finished...\n");
    while (true) {
        sleep_ms(1000);
    }
}
