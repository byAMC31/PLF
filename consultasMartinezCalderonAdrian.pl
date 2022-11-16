%MARTINEZ CALDERON ADRIAN

%swipl
%Base de conocimiento  


%DISFRUTAN VER PELICULAR
ve_peliculas(roberto,suspenso).
ve_peliculas(jaanai,suspenso).
ve_peliculas(abimael,suspenso).
ve_peliculas(leonardo,romance).
ve_peliculas(miguel,terror).

%roberto disfruta ver peliculas consumiento palomitas
consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).

%DISFRUTAN ESCUCHAR MUSICA
escucha_musica(abelino,reggae).
escucha_musica(jose,rock).
escucha_musica(mucaneth,reggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).



%TIENEN AUDIFONOS
tiene_audifonos(mucaneth,si).
tiene_audifonos(rolando,si).
tiene_audifonos(jaanai,si).
tiene_audifonos(leonardo,si).
tiene_audifonos(miguel,si).

%NO TIENEN AUDIFONOS
tiene_audifonos(abelino,no).
tiene_audifonos(jose,no).
tiene_audifonos(maldonado,no).
tiene_audifonos(roberto,no).
tiene_audifonos(abimael,no).



%NO TIENEN TIEMPO LIBRE 
tiempo_libre(roberto,no).
tiempo_libre(jaanai,no).
tiempo_libre(abimael,no).
tiempo_libre(leonardo,no).
tiempo_libre(miguel,no).



%tienen una cuenta de spotify
spotify(jose,si).
spotify(mucaneth,si).
spotify(maldonado,si).
spotify(abelino,no).
spotify(rolando,no).



%tienen una cuenta de netflix
netflix(roberto,si).
netflix(jaanai,si).
netflix(abimael,si).
netflix(miguel,si).
netflix(leonardo,no).




%CONSULTAS EN PROLOG 


%1.- ¿Quienes prefieren ver peliculas?
prefieren_peliculas(X) :- ve_peliculas(X,_).


%2.- ¿Quienes prefieren escuchar musica?
prefieren_musica(X):-escucha_musica(X,_).

%3.- Alguien que ve peliculas de suspenso, disfruta verlas 
%con palomitas, tiene una cuenta
% de netflix y tiempo libre, tiene una tarde perfecta
tarde_perfecta(X):- ve_peliculas(X,suspenso), consume(X,palomitas), netflix(X,si), tiempo_libre(X,si).


% 4.-Alguien que ve peliculas consumiendo una ensalada, tiene una vida saludable
vida_saludable(X):- consume(X,ensalada).


%5.- Alguien que escucha regional, tiene audifonos y la aplicacion de spotify
%disfruta del camino a casa
disfruta_camino_casa(X):- escucha_musica(X,regional), tiene_audifonos(X,si), spotify(X,si).


%6.-Alguien es feliz si ve peliculas consumiendo maruchan, tiempo libre y netflix
 es_feliz(X):- ve_peliculas(X,_), consume(X,maruchan),tiempo_libre(X,si), netflix(X,si).


%7.- Unicamente pueden ser amigos quienes tienen los mismos gustos (peliculas, botana)
    son_amigos(X,Y):-
    %son amigos quienes consumen palomitas y ven peliculas de suspenso    
    consume(X,palomitas),consume(Y,palomitas),ve_peliculas(X,suspenso),ve_peliculas(Y,suspenso);
    %son amigos quienes consumen maruchan y ven peliculas de suspenso
    consume(X,maruchan),consume(Y,maruchan),ve_peliculas(X,suspenso),ve_peliculas(Y,suspenso);
    %son amigos quienes consumen ensalada y ven peliculas de suspenso
    consume(X,ensalada),consume(Y,ensalada),ve_peliculas(X,suspenso),ve_peliculas(Y,suspenso);

    %son amigos quienes consumen palomitas y ven peliculas de romance
    consume(X,palomitas),consume(Y,palomitas),ve_peliculas(X,romance),ve_peliculas(Y,romance);
     %son amigos quienes consumen maruchan y ven peliculas de romance
    consume(X,maruchan),consume(Y,maruchan),ve_peliculas(X,romance),ve_peliculas(Y,romance);
    %son amigos quienes consumen ensalada y ven peliculas de romance
    consume(X,ensalada),consume(Y,ensalada),ve_peliculas(X,romance),ve_peliculas(Y,romance);
    
    %son amigos quienes consumen palomitas y ven peliculas de terror
    consume(X,palomitas),consume(Y,palomitas),ve_peliculas(X,terror),ve_peliculas(Y,terror);
    %son amigos quienes consumen maruchan y ven peliculas de terror
    consume(X,maruchan),consume(Y,maruchan),ve_peliculas(X,terror),ve_peliculas(Y,terror);
    %son amigos quienes consumen ensalada y ven peliculas de terror
    consume(X,ensalada),consume(Y,ensalada),ve_peliculas(X,terror),ve_peliculas(Y,terror).
    





        
          
              
         
        
         
