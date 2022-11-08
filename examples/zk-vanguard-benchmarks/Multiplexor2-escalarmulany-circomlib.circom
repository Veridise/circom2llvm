// src: circomlib-cff5ab6
pragma circom 2.0.0;

template Multiplexor2() {
    signal input sel;
    signal input in[2][2];
    signal output out[2];

    out[0] <== (in[1][0] - in[0][0])*sel + in[0][0];
    out[1] <== (in[1][1] - in[0][1])*sel + in[0][1];
}