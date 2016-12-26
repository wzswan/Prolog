even([],[])
even([H|L1Tail,L2):-
    0 is Head mod 2,
    L2 = [H|L2Tail],
    even(L1Tail,L2Tail).
even([_|L1Tail],L2):-
    even(L1Tail,L2).