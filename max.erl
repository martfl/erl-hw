-module (max).
-export ([max1/1, max2/1]).
%Realizar las funciones de max, reverse, sum, last y ++ en 4 versiones 

%Recursión "normal", de cola ("arrastrando el resultado", de cola (usando cps) y fldr


%COLA
max1([H|T])->max1(H,T).

max1(X,[])-> X;
max1(X, [H|T]) when X < H -> max1(H,T);
max1(X, [_|T])->max1(X,T).
