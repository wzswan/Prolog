domains
    namelist = symbol*
predicates
    lastd(namelist,symbol)
clauses        
    lastd([Head],X):-
        X = Head.
        lastd([_|Tail],X):-
            lastd(Tail,X).

