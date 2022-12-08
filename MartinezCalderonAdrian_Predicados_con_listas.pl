%MARTINEZ CALDERON ADRIAN
%Predicados con listas en prolog

%1.	Pertenece. Verificar si un elemento pertenece a una lista dada.
%ej.  ? pertenece(1,[3,4,5,1]).         true	

pertenece(X, [X|_]).
pertenece(X, [_|Ys]):-
          pertenece(X, Ys).


%2. size. Obtener la longitud de una lista.
%ej.     ? size([3,4,5,1],R).      R=4.
    
size([], 0).
size([_|Xs], R):-
          size(Xs, R2),
          R is R2 + 1.

%3.	Concatenación Obtener la concatenación de 2 listas dadas..
%ej.  ? concatenar([1,b,c,d],[3,4,5,1],R).
%		R=[1,b,c,d,3,4,5,1]

concatenar([], Cs, Cs).
concatenar([A|As],Bs,[A|Cs]):-
        concatenar(As, Bs, Cs).

%4.	Eliminar. Eliminar un elemento de una lista
%Verificar si un elemento pertenece a una lista dada.
%ej.  ? eliminar(1,[3,4,5,1],R).
% R=[3,4,5]

eliminar(_, [], []).
eliminar(Y, [Y|Xs], Zs):- eliminar(Y, Xs, Zs), !.
eliminar(X, [Y|Xs], [Y|Zs]):- eliminar(X, Xs, Zs).

%5.	Agregar un elemento a una lista.
%	ej. ? agregar(1,[3,4,5,1],R).
%   R=[1,3,4,5,1]

agregar(X,L1,[X|L1]).

%6.	Par e impares.Separar una lista en 2 listas (pares e impares).   
%ej.  ? separar([3,4,5,1,6,7,8],PARES,IMPARES).
%PARES=[4,6,8].
%IMPARES=[3,5,1,7]

separar([ ],[ ],[ ]).
separar([L|R],[L|P],I):-
    Z is L mod 2,Z=0,separar(R,P,I),!.
separar([L|R],P,[L|I]):-
    X is L mod 2,X>0,separar(R,P,I),!.

%7.	Ascendente. Verifica si una lista se encuentra de manera ascendente.
 %? ascendente([1,2,3,4,5]).     true
ascendente([X]).
ascendente([X1,X2|TAIL]):- 
    X1 =< X2, ascendente([X2|TAIL]).


 %8.Descendente. Verifica si una lista se encuentra de manera descendente.
 % ? descendente([5,4,3,2,1]).       true
     descendente([X]).
     descendente([X1,X2|TAIL]):- 
        X1 >= X2, descendente([X2|TAIL]).


%9.	Aplanar.
%aplanar(L, A), donde L es en general una lista de listas,
%tan compleja en su anidamiento como queramos imaginar, y A es la lista que resulta	de reorganizar los elementos contenidos en las listas anidadas en un único nivel.
%ej. ? aplanar([5,4,[3,4,[1,3],3]],R).
% R=[5,4,3,4,1,3,3]
aplanar([],[]).
aplanar([[H|T]|R],S):-
        aplanar([H|T],T1),aplanar(R,R1),append(T1,R1,S),!.
aplanar([[]|T],S):-
        aplanar(T,S),!.
aplanar([H|T],[H|S]):-aplanar(T,S).


%10.	Menor que head.
%Obtener una lista con elementos menores que el elemento HEAD.
%	? menor([5,4,3,7,8,2],R).
%R=[4,3,2]
 menor([],[]).
    menor([_],[]).
    menor([X1,X2|XS],[X2|A1]):-
        X1>X2,menor([X1|XS],A1).
    menor([X1,X2|XS],A1):-
        X1<X2,menor([X1|XS],A1).

%11.	Mayor que head.
%Obtener una lista con elementos mayores que el elemento HEAD.
%	? mayor([5,4,3,7,8,2],R).        R=[7,8]
mayor([],[]).
    mayor([_],[]).
    mayor([X1,X2|XS],[X2|A1]):-
        X1<X2,mayor([X1|XS],A1).
    mayor([X1,X2|XS],A1):-
        X1>X2,mayor([X1|XS],A1).

%12.	Invertir. Obtener una lista con los elementos invertidos.
%	? invertir([5,4,3,7,8,2],R).
 %   R=[2,8,7,3,4,5]
invertir([],[]).
invertir([X|XS],M):-
        invertir(XS,R),concatenar(R,[X],M).
