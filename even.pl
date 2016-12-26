even_odd([], [], []).
even_odd([H|T], [H|Even1], Odd) :-
    length([H|T], X),
    0 is X mod 2,
    even_odd(T, Even1, Odd).
    %%Even = [H|Even1].   % equivalent to append([H], Even1, Even)
even_odd([H|T], Even, [H|Odd1]) :-
    length([H|T], X),
    1 is X mod 2,
    even_odd(T, Even, Odd1).
    %%Odd = [H|Odd1].   % equivalent to append([H], Odd1, Odd)