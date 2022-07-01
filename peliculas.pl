personajeDeFiccion(frodo). 
personajeDeFiccion(harryPotter). 

animal(perro). 
animal(gato). 

quiniela(17,desgracia).
quiniela(15,niniabonita).

rol(verde,buscador).
rol(rojo,defensor).


pintura(verde,pared,kiosco).
pintura(violeta,pelota,kiosco).

gusta(harryPotter, verde).
gusta(harryPotter, amarillo).
gusta(frodo, verde).
gusta(frodo, perro).
gusta(frodo, violeta).
gusta(frodo, 17).


jugar(quiniela,Personaje,X):-
    gusta(Personaje,Algo),
    quiniela(Algo,X).
jugar(quidich,Personaje,Rol):-
    gusta(Personaje,Algo),
    rol(Algo,Rol).
jugar(Especie,Personaje,Especie):-
    gusta(Personaje,Especie),
    animal(Especie).


nota(harryPotter,artesOscuras,7,fecha(marzo,31,2000)).
nota(harryPotter,pociones,10,fecha(junio,27,2000)).
nota(ron,pociones,5,fecha(junio,27,2000)).

rindieronMismoDia(Mago,OtroMago):-
    nota(Mago,_,_,Fecha),
    nota(OtroMago,_,_,Fecha),
    Mago \= OtroMago.

abogado("Juan"). 
abogado("Pedro"). 

saltos(frodo,[saltoMontania,saltoAnillo,saltoDuende]).

saltos2(frodo,saltoMontania).
saltos2(duendeMalo,saltoAnillo).
saltos2(gandalf,saltoDuende).

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

ubicacionSalto(saltoMontania,coordenada(3,4)).
ubicacionSalto(saltoAnillo,coordenada(13,40)).
ubicacionSalto(saltoAnillo,coordenada3D(50,40,10)).
ubicacionSalto(saltoMontania,coordenada3D(13,40,100)).
ubicacionSalto(saltoDuende,centro(tierrasBajas)).
ubicacionSalto(saltoDuende,centro(tierrasAltas)).


hizoUnBuenSalto(Alguien):-
    saltos2(Alguien,Salto),
    ubicacionSalto(Salto,C),
    posicionValida(C).

posicionValida(coordenada(X,Y)):-
    numero(X),
    numero(Y).

posicionValida(centro(Lugar)):-
    esApto(Lugar).

posicionValida(coordenada3D(A,B,C)):-
    A is C + B.

esApto(tierrasAltas).


numero(3).
numero(4).


