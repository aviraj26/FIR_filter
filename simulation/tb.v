`timescale 1ns/1ps

module tb;

reg clk;
reg signed [15:0] noisy_sig;
wire signed [15:0] fil_sig;

top uut(
    .clk(clk),
    .noisy_sig(noisy_sig),
    .fil_sig(fil_sig)
);

/////////////////////////////////////////////////
// 100 MHz Clock
/////////////////////////////////////////////////

initial clk = 0;
always #5 clk = ~clk;   // 10 ns period -> 100 MHz

/////////////////////////////////////////////////
// Signal generation
/////////////////////////////////////////////////

real clean_signal;
real noise;
real t;

initial begin
    noisy_sig = 0;
    t = 0;

    repeat(2000) begin
        @(posedge clk);

        // Desired signal (2 MHz sine wave)
        clean_signal = 10000 * $sin(2 * 3.141592 * 2e6 * t);

        // High frequency noise (~30 MHz)
        noise = 3000 * $sin(2 * 3.141592 * 30e6 * t);

        noisy_sig = clean_signal + noise;

        t = t + 1e-8;   // 10 ns step (100 MHz sampling)
    end

    #100 $finish;
end

endmodule