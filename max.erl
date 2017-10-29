-module (max).
-export ([max1/1, max2/1, maxCps/1]).
%Realizar las funciones de max, reverse, sum, last y ++ en 4 versiones 

%Recursión "normal", de cola ("arrastrando el resultado", de cola (usando cps) y fldr)

%COLA
max1([H|T])->max1(H,T).

max1(X,[])-> X;
max1(X, [H|T]) when X < H -> max1(H,T);
max1(X, [_|T])->max1(X,T).

%normal
max2([X]) ->X;
max2([H | T]) -> erlang:max(H, max2(T)).

%cps
maxCps(Lst) -> maxCps(Lst, fun (X) -> X end).

maxCps([], K) -> K(0);
maxCps([H | T], K) -> maxCps(T, fun (X) -> K(erlang:max(X, H)) end).