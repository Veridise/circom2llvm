// src: circomlib-cff5ab6
pragma circom 2.0.0;

template Ch_t(n) {
    signal input a[n];
    signal input b[n];
    signal input c[n];
    signal output out[n];

    for (var k=0; k<n; k++) {
        out[k] <== a[k] * (b[k]-c[k]) + c[k];
    }
}
