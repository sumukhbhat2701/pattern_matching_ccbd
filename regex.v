module bar (input wire i, output wire o, input wire i1, i2, output wire o1, o2);
   assign o1 = i;
   assign o2 = i;
   or2 or2_0 (i1, i2, o);
endmodule

module star (input wire i, output wire o, input wire i1, output wire o1);
   or2 or2_0 (i, i1, o1);
   assign o = o1;
endmodule

module dot (input wire i, output wire o, input wire i1, i2, output wire o1, o2);
   assign o1 = i;
   assign o2 = i1;
   assign o = i2;
endmodule

// 1|0
module zero_bar_one (input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   bar bar_0 (i, o, i1, i2, o1, o2);
   char_zero char_zero_0 (clk, reset, o1, i_c, i1);
   char_one char_one_0 (clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)
module zero_bar_one_star_dot_one_dot_zero_bar_one_once(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   char_one char_one_0 (clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[2]
module zero_bar_one_star_dot_one_dot_zero_bar_one_twice(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_once zero_bar_one_star_dot_once_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[3]
module zero_bar_one_star_dot_one_dot_zero_bar_one_thrice(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_twice zero_bar_one_star_dot_one_dot_zero_bar_one_twice_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[4]
module zero_bar_one_star_dot_one_dot_zero_bar_one_four_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_thrice zero_bar_one_star_dot_one_dot_zero_bar_one_thrice_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[5]
module zero_bar_one_star_dot_one_dot_zero_bar_one_five_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_four_times zero_bar_one_star_dot_one_dot_zero_bar_one_four_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[6]
module zero_bar_one_star_dot_one_dot_zero_bar_one_six_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_five_times zero_bar_one_star_dot_one_dot_zero_bar_one_five_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[7]
module zero_bar_one_star_dot_one_dot_zero_bar_one_seven_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_six_times zero_bar_one_star_dot_one_dot_zero_bar_one_six_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[8]
module zero_bar_one_star_dot_one_dot_zero_bar_one_eight_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_seven_times zero_bar_one_star_dot_one_dot_zero_bar_one_seven_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[9]
module zero_bar_one_star_dot_one_dot_zero_bar_one_nine_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_eight_times zero_bar_one_star_dot_one_dot_zero_bar_one_eight_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[10]
module zero_bar_one_star_dot_one_dot_zero_bar_one_ten_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_nine_times zero_bar_one_star_dot_one_dot_zero_bar_one_nine_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[11]
module zero_bar_one_star_dot_one_dot_zero_bar_one_eleven_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_ten_times zero_bar_one_star_dot_one_dot_zero_bar_one_ten_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[12]
module zero_bar_one_star_dot_one_dot_zero_bar_one_twelve_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_eleven_times zero_bar_one_star_dot_one_dot_zero_bar_one_eleven_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[13]
module zero_bar_one_star_dot_one_dot_zero_bar_one_thirteen_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_twelve_times zero_bar_one_star_dot_one_dot_zero_bar_one_twelve_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[14]
module zero_bar_one_star_dot_one_dot_zero_bar_one_fourteen_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_thirteen_times zero_bar_one_star_dot_one_dot_zero_bar_one_thirteen_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[15]
module zero_bar_one_star_dot_one_dot_zero_bar_one_fifteen_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_fourteen_times zero_bar_one_star_dot_one_dot_zero_bar_one_fourteen_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[16]
module zero_bar_one_star_dot_one_dot_zero_bar_one_sixteen_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_fifteen_times zero_bar_one_star_dot_one_dot_zero_bar_one_fifteen_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[17]
module zero_bar_one_star_dot_one_dot_zero_bar_one_seventeen_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_sixteen_times zero_bar_one_star_dot_one_dot_zero_bar_one_sixteen_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[18]
module zero_bar_one_star_dot_one_dot_zero_bar_one_eighteen_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_seventeen_times zero_bar_one_star_dot_one_dot_zero_bar_one_seventeen_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[19]
module zero_bar_one_star_dot_one_dot_zero_bar_one_nineteen_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_eighteen_times zero_bar_one_star_dot_one_dot_zero_bar_one_eighteen_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// (1|0)* . 1 . (1|0)[20]
module zero_bar_one_star_dot_one_dot_zero_bar_one_twenty_times(input wire clk, reset, i, input wire i_c, output wire o);
   wire i1, i2, o1, o2;
   dot dot_0 (i, o, i1, i2, o1, o2);
   zero_bar_one_star_dot_one_dot_zero_bar_one_nineteen_times zero_bar_one_star_dot_one_dot_zero_bar_one_nineteen_times_0(clk, reset, o1, i_c, i1);
   zero_bar_one zero_bar_one_0(clk, reset, o2, i_c, i2);
endmodule

// main
module regex (input wire clk, reset, i, input wire i_c, output wire o);
  zero_bar_one_star_dot_one_dot_zero_bar_one_twenty_times my_regex(clk, reset, i, i_c, o);  
endmodule
