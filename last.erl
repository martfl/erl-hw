-module (last).
-export ([last1/1, last2/1, lastCps/1]).

%normal
last1([H|[]])->H;
last1([_|T])->last1(T).

%cola
last2([A]) -> A;
last2([H | T]) -> last2([H | T], H).

last2([], X) -> X;
last2([H | T], X) -> last2(T, H).

%cps
lastCps(Lst) -> lastCps(Lst, fun (X) -> X end).

lastCps([A], K) -> K(A);
lastCps([H | T], K) -> lastCps(T, fun (X) -> K(X) end).