// Enter source text here
// Gate-Level Full Adder
module full_adder_gate (
    input  a, b, cin,
    output sum, cout
);
    wire w1, w2, w3;

    // Sum logic
    xor (w1, a, b);
    xor (sum, w1, cin);

    // Carry logic
    and (w2, a, b);
    and (w3, w1, cin);
    or  (cout, w2, w3);

endmodule

// 4-bit Ripple Carry Adder using Gate-Level Full Adders
module ripple_carry_adder_4bit_gate (
    input  [3:0] a, b,
    input        cin,
    output [3:0] sum,
    output       cout
);
    wire c1, c2, c3;  // internal carry signals

    // Instantiate four gate-level full adders
    full_adder_gate fa0 (a[0], b[0], cin,  sum[0], c1);
    full_adder_gate fa1 (a[1], b[1], c1,   sum[1], c2);
    full_adder_gate fa2 (a[2], b[2], c2,   sum[2], c3);
    full_adder_gate fa3 (a[3], b[3], c3,   sum[3], cout);

endmodule
