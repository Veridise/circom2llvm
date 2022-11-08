// src: circomlib-cff5ab6
pragma circom 2.0.0;

template MultiMux1(n) {
    signal input c[n][2];  // Constants
    signal input s;   // Selector
    signal output out[n];

    for (var i=0; i<n; i++) {

        out[i] <== (c[i][1] - c[i][0])*s + c[i][0];

    }
}