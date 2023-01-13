/*Begin Question 3.1*/
indices([], [], []).
indices([], _, []).
indices( [IS_H|IS_T], XS, ES ) :-
    nth0(IS_H, XS, N),
    append([N], Temp, ES),
    indices(IS_T, XS, Temp).
/*End Question 3.1*/

/*Begin Question 3.2*/
possible(GRID):- 
	next([1,2,3,4,5,6,7,8,9], GRID).

next([], []).
next([H|T], L) :-
    next(T, LTemp),
    select(H, L, LTemp).
/*End Question 3.2*/

/*Begin Question 3.3*/
acceptable( 0,  0,  0,  0,  [], 0, [], 0, [], 0, []).
acceptable( T0, T1, T2, T3, US, U, VS, V, WS, W, GRID) :-
    indices(US, GRID, UList),
    sumequal(UList, U),
    indices(VS, GRID, VList),
    sumequal(VList, V),
    indices(WS, GRID, WList),
    sumequal(WList, W),
    indices([0,1,3,4], GRID, T0List),
    sumequal(T0List, T0),
    indices([1,2,4,5], GRID, T1List),
    sumequal(T1List, T1),
    indices([3,4,6,7], GRID, T2List),
    sumequal(T2List, T2),
    indices([4,5,7,8], GRID, T3List),
    sumequal(T3List, T3).

sumlist([], 0).
sumlist( [SumH|SumT], Num ) :-
    sumlist( SumT, W ), Num is SumH + W.
            
sumequal(List, Sum) :-
    sumlist(List, Total),
    Total == Sum.

suko( 0,  0,  0,  0,  [], 0, [], 0, [], 0, []).
suko( T0, T1, T2, T3, US, U, VS, V, WS, W, GRID) :-
    possible(GRID),
    acceptable(T0, T1, T2, T3, US, U, VS, V, WS, W, GRID).
/*End Question 3.3*/
/*any main predicates for testing goes here*/
main:-
    indices( [1,3,4], [a,b,c,d,e,f], ES ),
    write(ES),
	acceptable( 15, 14, 26, 23
	, [0,1,2,3], 16
	, [4,6,7], 17
	, [5,8], 12
	, [1, 2, 4, 9, 3, 5, 6, 8, 7] ),
	suko( 15, 14, 26, 23
	, [0,1,2,3], 16
	, [4,6,7], 17
	, [5,8], 12
	, GRID ),
    write(GRID).

