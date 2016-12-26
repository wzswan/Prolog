min_in_list( Xs , Ys , Ms ) :- minimums( [Xs,Ys] , Ms ) .

minimums( []     , [] ) .
minimums( [L|Ls] , [M|Ms] ) :- minimum(L,M) , minimums(Ls,Ms).

minimum( [X|Xs] , M ) :- minimum(Xs,X,M) .

minimum( []     , M , M ) .
minimum( [X|Xs] , T , M ) :- X <  T , minimum(Xs,X,M).
minimum( [X|Xs] , T , M ) :- X >= T , minimum(Xs,T,M).