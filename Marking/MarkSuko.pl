main
  :- mark31,
     mark32,
     mark33.

mark31
  :- indices( [2], [a,b,c,d], [c] ),
     indices( [1,3,5], [a,b,c,d,e,f], [b,d,f] ),
     indices( [2,4], [a,b,c,d,e,f], [c,e] ),
     indices( [1,4,6,7], [a,b,c,d,e,f,g,h,i], [b,e,g,h] ),
     indices( [0,1,2,3], [a,b,c,d,e], [a,b,c,d] ),
     writeln( 'Q3.1 5/5' ).

mark32
  :- possible( [6,4,2,9,3,1,8,5,7] ),
     possible( [9,6,1,3,4,5,8,2,7] ),
     possible( [6,1,2,9,3,8,4,7,5] ), 
     possible( [1,4,6,7,3,5,2,9,8] ),
     possible( [4,2,8,3,1,7,6,9,5] ),
     acceptable( 22, 10, 25, 16, [0,2,6],16, [1,3,4],16, [5,7,8],13, [6,4,2,9,3,1,8,5,7] ),
     acceptable( 22, 16, 17, 18, [0,3,4],16, [1,2,5,8],19, [6,7],10, [9,6,1,3,4,5,8,2,7] ),
     acceptable( 19, 14, 23, 23, [0,1,2,5],17, [3,4,6],16, [7,8],12, [6,1,2,9,3,8,4,7,5] ),
     acceptable( 15, 18, 21, 25, [0,5,8],14, [1,2,4],13, [3,6,7],18, [1,4,6,7,3,5,2,9,8] ),
     acceptable( 10, 18, 19, 22, [0,3,6],13, [1,2,4],11, [5,7,8],21, [4,2,8,3,1,7,6,9,5] ),
     writeln( 'Q3.2 10/10' ).

mark33
  :- suko( 15, 14, 26, 23, [0,1,2,3],16, [4,6,7],17, [5,8],12, [1,2,4,9,3,5,6,8,7] ),
     suko( 15, 14, 26, 23, [0,1,2,5],12, [3,6],14, [4,7,8],19, [1,5,2,6,3,4,8,9,7] ), 
     suko( 24, 17, 20, 21, [0,2,6],8, [1,3,4],19, [5,7,8],18,  [5,9,1,7,3,4,2,8,6] ),
     suko( 17, 13, 21, 18, [0,2],12, [1,3,4],12, [5,6,7,8],21, [5,1,7,8,3,2,6,4,9] ), 
     suko( 26, 26, 17, 15, [0,1],16, [2,5,7,8],17, [3,4,6],12, [7,9,8,4,6,3,2,5,1] ),
     writeln( 'Q3.3 10/10' ).