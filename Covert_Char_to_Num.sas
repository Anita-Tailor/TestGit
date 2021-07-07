data QuoteDetails_OtherOutputs;
Input Value : $10. Name $6. ;
cards;
243.46 STEFFI
3042.37 STEFFI
1.42 STEFFI
0.04 STEFFI
0.01 STEFFI
697.55 STEFFI
7628.22 STEFFI
1619.2 STEFFI
1330.1 STEFFI
0.09 STEFFI
13.09 STEFFI
140.34 STEFFI
6258997.99 STEFFI
7099830.75 STEFFI
1619.2 STEFFI
599745.26 STEFFI
89.94 STEFFI
50 STEFFI
;
run;
 

Data OtherOutPrep;
set work.QuoteDetails_OtherOutputs;
If upcase(input(name,$6.)) in ('STEFFI','EDBERG') then do;
Val1=input(Value,10.2);
end;
run;
