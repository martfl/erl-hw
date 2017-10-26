-module (append).
-export ([app1/2, app2/1]).

%NORMAL
app1([H|T],Tail)->[H|app1(T, Tail)];
app1([],Tail)->Tail.
%COLA