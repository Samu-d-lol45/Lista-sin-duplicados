% eliminar_duplicados/2: Elimina elementos duplicados de una lista manteniendo el orden
% eliminar_duplicados(+ListaOriginal, -ListaSinDuplicados)

% Caso base: lista vacía
eliminar_duplicados([], []).

% Caso recursivo: si el elemento ya está en la lista acumulada, no se añade
eliminar_duplicados([Cabeza|Cola], ListaSinDuplicados) :-
    eliminar_duplicados(Cola, ListaTemp),
    (   member(Cabeza, ListaTemp)
    ->  ListaSinDuplicados = ListaTemp
    ;   ListaSinDuplicados = [Cabeza|ListaTemp]
    ).

% Ejemplos de uso para testing
:- begin_tests(eliminar_duplicados).

test(elimina_duplicados_lista_vacia) :-
    eliminar_duplicados([], []).

test(elimina_duplicados_sin_duplicados) :-
    eliminar_duplicados([a,b,c], [a,b,c]).

test(elimina_duplicados_con_duplicados) :-
    eliminar_duplicados([a,b,c,a,d,b,e], [a,b,c,d,e]).

test(mantiene_orden_relativo) :-
    eliminar_duplicados([1,2,3,2,1], [1,2,3]).

:- end_tests(eliminar_duplicados).
