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

 

 
