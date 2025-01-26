// class packet;
// randc logic[31:0]factorial;
// constraint num_odd{factorial inside {1,6,120,5040,362880};}
// endclass
// module random_range;
//    packet pkt=new();
//   initial begin
//     repeat(8) begin
//       pkt.randomize();
//       $display("\t even factorial number=%0d",pkt.factorial);
//     end
//   end
// endmodule

class packet;
randc int fact;
  constraint  num{fact>=1 && fact<=10 && fact%2==1;}
function int factorial(int num);
      if(num==0)
        return 1;
      else
        return num*factorial(num-1);
endfunction
endclass
module tb;
  int result;
  packet pkt=new();
  initial begin
    repeat(10) begin
    pkt.randomize();
    result=pkt.factorial(pkt.fact);
    $display("display the factorial of odd number %0d that is %0d",pkt.fact,result);
  end
  end
endmodule
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4749 kB (elbread=455 elab2=4151 kernel=142 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: display the factorial of 7 that is 5040
# KERNEL: display the factorial of 3 that is 6
# KERNEL: display the factorial of 9 that is 362880
# KERNEL: display the factorial of 1 that is 1
# KERNEL: display the factorial of 5 that is 120
# KERNEL: display the factorial of 1 that is 1
# KERNEL: display the factorial of 9 that is 362880
# KERNEL: display the factorial of 5 that is 120
# KERNEL: display the factorial of 3 that is 6
# KERNEL: display the factorial of 7 that is 5040
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
