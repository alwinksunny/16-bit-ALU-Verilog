`timescale 1ns / 1ps

module alu_tb;

reg [15:0] A, B;
reg [2:0] sel;

wire [15:0] result;
wire zero;
wire carry;
wire overflow;

// Instantiate ALU
alu_16bit uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .zero(zero),
    .carry(carry),
    .overflow(overflow)
);

initial begin

    $display("Starting ALU Test...");
    $monitor("Time=%0t | A=%d B=%d sel=%b | Result=%d | Zero=%b Carry=%b Overflow=%b",
              $time, A, B, sel, result, zero, carry, overflow);

    // ADD
    A = 10; B = 5; sel = 3'b000;
    #10;

    // SUB
    sel = 3'b001;
    #10;

    // AND
    sel = 3'b010;
    #10;

    // OR
    sel = 3'b011;
    #10;

    // XOR
    sel = 3'b100;
    #10;

    // SHIFT LEFT
    sel = 3'b101;
    #10;

    // SHIFT RIGHT
    sel = 3'b110;
    #10;

    // ZERO TEST
    A = 0; B = 0; sel = 3'b000;
    #10;

    // OVERFLOW TEST
    A = 16'h7FFF; B = 1; sel = 3'b000;
    #10;

    $display("Test Completed.");
    $stop;

end

endmodule
