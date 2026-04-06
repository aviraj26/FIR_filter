<h1 align="center">9-Tap FIR Filter Design (Vivado Simulation)</h1>

<p align="center">
  <b>Design and simulation of a 9-tap FIR band-pass filter for noise reduction</b><br>
  Center Frequency: 10 MHz | Bandwidth: 100 MHz
</p>

<hr>

<h2>📌 Overview</h2>

<p>
This project implements a <b>9-tap Finite Impulse Response (FIR) filter</b> designed to process a noisy signal.
The filter is centered at <b>10 MHz</b> with a bandwidth of <b>100 MHz</b>, and is simulated using <b>Vivado</b>.
</p>

<p>
The goal is to demonstrate how FIR filters can be used in digital signal processing (DSP) to remove noise and extract desired frequency components.
</p>

<hr>

<h2>🧠 FIR Filter Basics</h2>

<p>
A FIR filter produces an output based on a weighted sum of current and past input samples:
</p>

<pre>
y[n] = h[0]x[n] + h[1]x[n-1] + ... + h[8]x[n-8]
</pre>

<ul>
  <li><b>Number of taps:</b> 9</li>
  <li><b>Filter type:</b> Band-pass</li>
  <li><b>Linear phase:</b> Yes (symmetric coefficients)</li>
</ul>

<hr>

<h2>⚙️ Design Specifications</h2>

<table>
  <tr>
    <th>Parameter</th>
    <th>Value</th>
  </tr>
  <tr>
    <td>Filter Type</td>
    <td>Band-pass FIR</td>
  </tr>
  <tr>
    <td>Number of Taps</td>
    <td>9</td>
  </tr>
  <tr>
    <td>Center Frequency</td>
    <td>10 MHz</td>
  </tr>
  <tr>
    <td>Bandwidth</td>
    <td>100 MHz</td>
  </tr>
  <tr>
    <td>Design Method</td>
    <td>Windowing / Frequency Sampling</td>
  </tr>
  <tr>
    <td>Simulation Tool</td>
    <td>Vivado</td>
  </tr>
</table>

<hr>

<h2>📂 Project Structure</h2>

<pre>
.
├── src/
│    └──top.sv
│   
├── tb/
│   └── tb.v
│   └── waveform.png
└── README.md
</pre>

<hr>

<h2>🚀 Features</h2>

<ul>
  <li>✔ 9-tap FIR filter implementation in Verilog</li>
  <li>✔ Designed for noisy signal filtering</li>
  <li>✔ Simulation performed in Vivado</li>
  <li>✔ Testbench with noisy input signal</li>
</ul>

<hr>

<h2>🧪 Simulation</h2>

<p>
The filter was simulated using Vivado with a noisy input signal consisting of:
</p>

<ul>
  <li>Desired signal at 10 MHz</li>
  <li>Added high-frequency and random noise</li>
</ul>

<p>
The output demonstrates attenuation of unwanted frequencies while preserving the desired band.
</p>

<hr>

<h2>📊 Results</h2>

<ul>
  <li>Noise components outside the passband are significantly reduced</li>
  <li>Desired signal around 10 MHz is preserved</li>
  <li>Linear phase response ensures minimal signal distortion</li>
</ul>

<hr>


<h2>🛠️ Tools Used</h2>

<ul>
  <li>Vivado (Simulation and Design)</li>
  <li>Verilog HDL</li>
</ul>

<hr>

