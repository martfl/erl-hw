-module (last).
-export ([last1/1, last2/1, lastCps/1, lastfold/1]).

%normal
last1([H|[]])->H;
last1([_|T])->last1(T).

%cola
last2([A]) -> A;
last2([H | T]) -> last2([H | T], H).

last2([], X) -> X;
last2([H | T], _X) -> last2(T, H).

%cps
lastCps(Lst) -> lastCps(Lst, fun (X) -> X end).

lastCps([A], K) -> K(A);
lastCps([_H | T], K) -> lastCps(T, fun (X) -> K(X) end).

%foldr

lastfold(Lst1) -> lists:foldr(fun(T, _X)-> T end, 0, lists:reverse(Lst1)).

