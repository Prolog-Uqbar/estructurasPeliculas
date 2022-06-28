personajeDeFiccion(frodo). 
personajeDeFiccion(harryPotter). 

animal(perro). 
animal(gato). 

pintura(verde,pared,kiosco).

gusta(harryPotter, verde).
gusta(harryPotter, amarillo).
gusta(frodo, verde).
gusta(frodo, perro).

gusta(frodo,[verde,perro]).

nota(harryPotter,artesOscuras,7,fecha(marzo,31,2000)).
nota(harryPotter,pociones,10,fecha(junio,27,2000)).
nota(ron,pociones,5,fecha(junio,27,2000)).

rindieronMismoDia(Mago,OtroMago):-
    nota(Mago,_,_,Fecha),
    nota(OtroMago,_,_,Fecha),
    Mago \= OtroMago.



abogado("Juan"). 
abogado("Pedro"). 

saltos(frodo,[saltaMontania,saltoAnillo,saltoDuende]).



saltos2(frodo,saltaMontania).
saltos2(frodo,saltoAnillo).
saltos2(frodo,saltoDuende).

dibujo( coordenada(3,4), circulo, 3 ).
colectivo(esquina, "Juan", [1,2,3]).
persona("Juan").

cuantosSaltos(Alguien,Cantidad):-
    saltos(Alguien,Saltos),
    length(Saltos,Cantidad).

unSalto(Alguien,Salto):-
    saltos(Alguien,Saltos),
    member(Salto,Saltos).

cuantosSaltos2(Alguien,Cantidad):-
    findall( Salto, saltos2(Alguien,Salto), Saltos ),
    length(Saltos,Cantidad).

ubicacionSalto(saltaMontania,coordenada(3,4)).
ubicacionSalto(saltaAnillo,coordenada(13,40)).

hizoUnBuenSalto(Alguien):-
    saltos2(Alguien,Salto),
    ubicacionSalto(Salto,C),
    posicionValida(C).

posicionValida(coordenada(X,Y)):-
    numero(X),
    numero(Y).

numero(3).
numero(4).


