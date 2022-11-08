// src: circomlib-cff5ab6
pragma circom 2.0.0;

template Mix(t, M) {
    signal input in[t];
    signal output out[t];

    var lc;
    for (var i=0; i<t; i++) {
        lc = 0;
        for (var j=0; j<t; j++) {
            lc += M[i][j]*in[j];
        }
        out[i] <== lc;
    }
}