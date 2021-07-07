ods listing;   

filename svgout '/home/sukaxt/ATGIT/hat.svg'; 

goptions reset   = all 
         device  = SVG 
         gsfname = svgout 
         gsfmode = replace; 

data hat; 
   do x=-5 to 5 by .25; 
      do y=-5 to 5 by .25; 
         z=sin(sqrt(x*x+y*y)); 
         output; 
      end; 
   end; 
proc g3d data=hat; 
   plot y*x=z/ctop=orange; 
   title 'Cowboy Hat with G3D'; 
run; 
quit; 
