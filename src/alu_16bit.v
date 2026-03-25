`timescale 1ns / 1ps

// 16-bit ALU Module
// Operations:
// 000 -> ADD
// 001 -> SUB
// 010 -> AND
// 011 -> OR
// 100 -> XOR
// 101 -> SHIFT LEFT
// 110 -> SHIFT RIGHT

module alu_16bit(
    input [15:0] A,
    input [15:0] B,
    input [2:0] sel,
    output reg [15:0] result,
    output zero,
    output reg carry,
    output reg overflow
);

always @(*) begin
    carry = 0;
    overflow = 0;

    case(sel)

        3'b000: begin // ADD
            {carry, result} = A + B;
            overflow = (A[15] == B[15]) && (result[15] != A[15]);
        end

        3'b001: begin // SUB
            {carry, result} = A - B;
            overflow = (A[15] != B[15]) && (result[15] != A[15]);
        end

        3'b010: result = A & B;   // AND
        3'b011: result = A | B;   // OR
        3'b100: result = A ^ B;   // XOR

        3'b101: result = A << 1;  // SHIFT LEFT
        3'b110: result = A >> 1;  // SHIFT RIGHT

        default: result = 16'b0;

    endcase
end

// Zero flag
assign zero = (result == 16'b0);

endmodule
