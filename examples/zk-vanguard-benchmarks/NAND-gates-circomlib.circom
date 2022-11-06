// src: circomlib-cff5ab6
pragma circom 2.0.0;

template NAND() {
    signal input a;
    signal input b;
    signal output out;

    out <== 1 - a*b;
}