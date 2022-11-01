// src: circomlib-cff5ab6
pragma circom 2.0.0;

template Maj_t(n) {
    signal input a[n];
    signal input b[n];
    signal input c[n];
    signal output out[n];
    signal mid[n];

    for (var k=0; k<n; k++) {
        mid[k] <== b[k]*c[k];
        out[k] <== a[k] * (b[k]+c[k]-2*mid[k]) + mid[k];
    }
}