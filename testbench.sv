module ALU_tb;
    reg  [7:0] A, B;
    reg  [2:0] opcode;
    wire [7:0] result;

    // Instantiate the ALU
    ALU uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result)
    );

    initial begin
        // Monitor output
        $display("Time\tOpcode\tA\tB\tResult\tOperation");

        A = 8'd15; B = 8'd10;

        opcode = 3'b000; #10; // ADD
        $display("%0t\t%b\t%d\t%d\t%d\tADD", $time, opcode, A, B, result);

        opcode = 3'b001; #10; // SUB
        $display("%0t\t%b\t%d\t%d\t%d\tSUB", $time, opcode, A, B, result);

        opcode = 3'b010; #10; // AND
        $display("%0t\t%b\t%d\t%d\t%d\tAND", $time, opcode, A, B, result);

        opcode = 3'b011; #10; // OR
        $display("%0t\t%b\t%d\t%d\t%d\tOR", $time, opcode, A, B, result);

        opcode = 3'b100; #10; // NOT A
        $display("%0t\t%b\t%d\t%d\t%d\tNOT A", $time, opcode, A, B, result);

        $stop;
    end
endmodule
