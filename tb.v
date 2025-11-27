// Enter testbench code here
`timescale 1ns/1ps
module tb_ripple_carry_adder_4bit_gate;

    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    ripple_carry_adder_4bit_gate uut (
        .a(a), .b(b), .cin(cin),
        .sum(sum), .cout(cout)
    );

    initial begin
        $dumpfile("ripple_carry_adder_4bit_gate.vcd");
        $dumpvars(0, tb_ripple_carry_adder_4bit_gate);

        // Test cases
        a = 4'b0001; b = 4'b0010; cin = 0; #10;
        a = 4'b0101; b = 4'b0111; cin = 0; #10;
        a = 4'b1111; b = 4'b0001; cin = 0; #10;
        a = 4'b1010; b = 4'b0101; cin = 1; #10;

        $finish;
    end

endmodule
