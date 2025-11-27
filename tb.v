// Enter testbench code here
`timescale 1ns/1ps
module tb_CLA_4bit;
    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;

    CLA_4bit uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $dumpfile("CLA_4bit.vcd");
        $dumpvars(0, tb_CLA_4bit);

        A=4'b0101; B=4'b0011; Cin=0; #10;
        A=4'b1111; B=4'b0001; Cin=0; #10;
        A=4'b1010; B=4'b0101; Cin=1; #10;
        A=4'b1111; B=4'b1111; Cin=1; #10;

        $finish;
    end
endmodule