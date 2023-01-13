/*Begin Question 4.1*/
prime(N) :-
  N > 1,
  succ(N0, N),
  \+ (between(2, N0, X), 0 is N mod X).
/*End Question 4.1*/

/*Begin Question 4.2*/
possible(X,Y,Z) :-
    permutation([4,5,6,7,8,9], Perm),
    split(2, Perm, L1, R1),
    append([1], L1, X1),
    split(2, R1, R2, L2),
    append([2], L2, Y1),
    split(2, R2, L3, R3),
    append([3], L3, Z1),
    listToNum(X1, X),
    listToNum(Y1, Y),
    listToNum(Z1, Z),
    acceptable(X, Y, Z).

split(Index,List,Left,Right) :-
   length(Left,Index),
   append(Left,Right,List).

listToNum(L,N) :- atomic_list_concat(L,A),atom_number(A,N).
/*End Question 4.2*/

/*Begin Question 4.3*/
acceptable( X, Y, Z ) :-
    not(prime(X)),
    not(prime(Y)),
    not(prime(Z)),
    quadrant(X, XQ),
    quadrant(Y, YQ),
    quadrant(Z, ZQ),
    not(XQ = YQ),
    not(YQ = ZQ),
    not(ZQ = XQ),
	numToList(X, XL),
    numToList(Y, YL),
    numToList(Z, ZL),
    append(XL, YL, L),
    append(L, ZL, EL),
	forall(member(Element,[1,2,3,4,5,6,7,8,9]), member(Element,EL)).
	

quadrant(N, Q) :-
    N < 90,
    Q is 1;
    N >= 90, N < 180,
    Q is 2;
    N >= 180, N < 270,
    Q is 3;
    N >= 270, N < 360,
    Q is 4.

numToList(NUM,[LIST|[]]):-
   NUM < 10,
   LIST is NUM,
   !.
numToList(NUM,LIST):-
   P is NUM // 10,
   numToList(P,LIST1),
   END is (NUM mod 10), 
   append(LIST1,[END] ,LIST).
    
trait( X, Y, Z ) :-
    possible(X,Y,Z),
    acceptable(X,Y,Z).
/*End Question 4.3*/
    
/*any main predicates for testing goes here*/
main :-
    trait(X,Y,Z),
    write(X),
    write(Y),
    write(Z).
