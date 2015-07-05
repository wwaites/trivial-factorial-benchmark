/** Trivial Factorial Benchmark -- C version
 *
 * This software is in the public domain.
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <gmp.h>

void fact(mpz_t acc, unsigned long n) {
    register unsigned long i;
    for (i = 1; i <= n; i++) {
	mpz_mul_ui(acc, acc, i);
    }
}

int main(int argc, char *argv[]) {
    unsigned long n;
    mpz_t f;

    if (argc != 2) {
	fprintf(stderr, "Usage: %s number\n", argv[0]);
	exit(1);
    }

    mpz_init_set_str(f, "1", 0);
    n = atoi(argv[1]);

    fact(f, n);
    mpz_out_str(stdout, 10, f);
    printf("\n");
}
