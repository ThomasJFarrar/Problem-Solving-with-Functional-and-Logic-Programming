main
  :-  mark41,
      mark42,
      mark43.

mark41
  :- prime( 31 ),
     prime( 47 ),
     prime( 71 ),
     prime( 89 ),
     prime( 97 ),
     writeln( 'Q4.1 5/5' ).

mark42
  :- possible( 145, 245, 345 ),
     possible( 150, 250, 350 ),
     possible( 159, 259, 359 ),
     possible( 169, 248, 357 ),
     possible( 178, 259, 346 ),
     writeln( 'Q4.2 10/10' ).

mark43
  :- trait( 159, 267, 348 ),
     trait( 168, 249, 357 ),
     trait( 169, 247, 358 ),
     trait( 169, 248, 357 ),
     trait( 176, 249, 358 ),
     trait( 176, 259, 348 ),
     trait( 178, 249, 356 ),
     trait( 178, 259, 346 ),
     writeln( 'Q4.3 10/10' ).
