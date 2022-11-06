// src: circomlib-cff5ab6
pragma circom 2.0.0;

template RotR(n, r) {
    signal input in[n];
    signal output out[n];

    for (var i=0; i<n; i++) {
        out[i] <== in[ (i+r)%n ];
    }
}
