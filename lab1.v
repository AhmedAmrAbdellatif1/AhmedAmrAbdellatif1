/*normal line for declaring signals or ports 

[direction] [data_type] [width-1:0] [name] ;
example :

input  wire [7:0] x ;
output reg  [7:0] y ;

*/
module full_adder_1_bit (X,Y,Cin,S,Cout);

input  	 	X , Y , Cin ;  
// no data type    >> wire by default 
// no width        >> 1 bit by default 
output   	S , Cout ;

// define internal signals 
wire  	 	int_1 , int_2 , int_3 ;


assign S  	 = X ^ Y ; // output 1

assign int_1 = X & Y ;
assign int_2 = X & Cin ;
assign int_3 = Y & Cin ;

assign Cout = int_1 | int_2 | int_3 ; // output 2

/*
kan momken n2ol 
assign Cout = (X & Y) | (X & Cin) | (Y & Cin) ; // output 2

bs kan hyb2a long line we mesh readable fa mesh recommended 
*/



endmodule // or endmodule : full_adder_1_bit

// O.B
