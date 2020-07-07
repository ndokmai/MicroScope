#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

static uint64_t count;
static float secrets[512];

float get_secret(int id, float key) {
    //replay handle
    count ++;
    //measurement access
    return secrets[id]/key;
}

int main() {
    // initialize victim program
    count = 0;
    for(int i=0; i < 512; i++) {
        secrets[i] = 10.0;
    }

    printf("Victim: Replay handle: 0x%lx\n", (unsigned long)&count); 
    printf("Victim: Enter any key to continue...");
    getchar();

    float secret_access = get_secret(0, 3.0);
    printf("The secret is %f\n", secret_access);
}
