`timescale 1ns / 1ps

module testbench;
    reg [3:0] A, B;
    reg bin;
    wire [3:0] Diff;
    wire Bout;
    
    ripple_carry_subtractor uut (
        .A(A), .B(B), .bin(bin), .Diff(Diff), .Bout(Bout)
    );
    
    initial begin
        $monitor("A = %b, B = %b, bin = %b -> Diff = %b, Bout = %b", A, B, bin, Diff, Bout);
        
        A = 4'b1101; B = 4'b1010; bin = 0; #10;
        A = 4'b1000; B = 4'b0111; bin = 0; #10;
        A = 4'b1111; B = 4'b0001; bin = 1; #10;
        A = 4'b0101; B = 4'b0011; bin = 0; #10;
        
        $finish;
    end
endmodule
