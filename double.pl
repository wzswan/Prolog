even(N) :- 
    N mod 2 =:= 0.    

doubleeven([],[]).
doubleeven([H|T], [H,H|Z]) :-
    even(H),
    !,
    doubleeven(T,Z).
doubleeven([H|T], [H|Z]) :-
    doubleeven(T,Z).