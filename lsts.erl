-module(lsts).
-export([len/1, max/1, len1/1, cons/2, foldr/3]).

len([]) ->
  0;
len([_ | T]) -> %variables anonimas_ en el caso de que no se ocupe en la recursion
  1 + len(T).

len1(Lst) ->
  len1(Lst,0).

len1([], Res) -> Res;
len1([_ | T], Res)-> len1(T, Res + 1).

cons(H,T) ->
  [H|T].

%%fildr(Lista, Function, LV)

foldr([],_funcion, LV) ->
  LV;
foldr([H | T], Funcion, LV )->
  Funcion(H, foldr(T, Funcion, LV)).

max([A]) ->
  A;
max([H | T]) -> erlang:max(H, max(T)).

%lsts:len1()
%% lsts:foldr([1,2,3], fun (A,B) -> A+B end,0)
