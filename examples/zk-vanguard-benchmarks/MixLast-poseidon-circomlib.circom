// src: circomlib-cff5ab6
pragma circom 2.0.0;

template MixLast(t, M) {
    signal input in[t];
    signal output out;

    var lc = 0;
    for (var j=0; j<t; j++) {
        lc += M[j][0]*in[j];
    }
    out <== lc;
}