module full_subtractor(
    input a, b, bin,
    output diff, bout
);
    assign diff = a ^ b ^ bin;
    assign bout = (~a & (b ^ bin)) | (b & bin);
endmodule

module ripple_carry_subtractor(
    input [3:0] A, B,
    input bin,
    output [3:0] Diff,
    output Bout
);
    wire b1, b2, b3;
    
    full_subtractor fs0(A[0], B[0], bin, Diff[0], b1);
    full_subtractor fs1(A[1], B[1], b1, Diff[1], b2);
    full_subtractor fs2(A[2], B[2], b2, Diff[2], b3);
    full_subtractor fs3(A[3], B[3], b3, Diff[3], Bout);
    
endmodule
