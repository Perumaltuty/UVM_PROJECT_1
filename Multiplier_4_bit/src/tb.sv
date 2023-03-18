`include "../../../rtl/mul.v"
`include "mul_if.sv"
`include "test.sv"
`include "uvm_macros.svh"
import uvm_pkg::*;
module tb;

  mul_if mif();

  mul dut (.a(mif.a), .b(mif.b), .y(mif.y));

  initial
  begin
  uvm_config_db #(virtual mul_if)::set(null, "*", "mif", mif);
  run_test("test");
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
