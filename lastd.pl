lastd([],X).
lastd([Head|Tail],X):-
    lastd(Tail,X),
     X = Head.