module VendingMoore_t();
  reg coin, switch, clk;
  reg [0:4] choice;  
  wire indicator;
  wire [0:4] drink;
  
  VendingMoore uut(.coin(coin),.clk(clk),.indicator(indicator),.drink(drink),.choice(choice),.switch(switch));
  initial begin
    coin=0;
    clk=0;
    switch=0;
    choice=0;
    
    #20 coin=1;
    #10 switch=1;
    #10 switch=1;
    #10 clk=0;
    
    
 end
 always@(posedge coin)
 begin
      choice<=1;
      clk<=1;
    end
  always@(negedge clk)
  begin
      coin<=0;
      choice<=#20 0;
    end
    always@(posedge switch, negedge switch)
    begin
      switch<=0;
    end
endmodule