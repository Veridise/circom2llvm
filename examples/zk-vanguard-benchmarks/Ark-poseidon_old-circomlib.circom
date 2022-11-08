// src: circomlib-cff5ab6
pragma circom 2.0.0;

template Ark(t, C, r) {
    signal input in[t];
    signal output out[t];

    for (var i=0; i<t; i++) {
        out[i] <== in[i] + C[i + r];
    }
}