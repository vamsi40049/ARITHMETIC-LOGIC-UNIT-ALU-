module ALU (
    input  [7:0] A,          // 8-bit input A
    input  [7:0] B,          // 8-bit input B
    input  [2:0] opcode,     // 3-bit opcode
    output reg [7:0] result  // 8-bit result output
);

    always @(*) begin
        case (opcode)
            3'b000: result = A + B;     // Addition
            3'b001: result = A - B;     // Subtraction
            3'b010: result = A & B;     // AND
            3'b011: result = A | B;     // OR
            3'b100: result = ~A;        // NOT (only on A)
            default: result = 8'b0;     // Default: 0
        endcase
    end

endmodule
