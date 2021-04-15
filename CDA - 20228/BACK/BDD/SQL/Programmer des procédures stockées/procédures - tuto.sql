/* une procédure c'est comme une fonction mais en sql
tu commence par mettre delimiter suivi de ce que tu veux mettre comme symbole de fin de procédure
je te conseille le double dollar $$, plus facile et rapide à faire que le | dans le cours
ensuite tu la déclare avec create procedure nom_procedure()
tu mets begin
tu fais tes manip / tes requêtes
tu mets end avec ton delimiter , ici donc end $$ (dans le cours c'est end |)
et ensuite tu redéfinis le delimiter comme celui par défaut, a savoir le point virgule ; 
je t'ai créé le pattern en dessous, à toi de tracer !
*/

/* Exercices
Réalisez les exercices suivants sur la base papyrus que vous adorez tous :

Exercice 1 : création d'une procédure stockée sans paramètre
Créez la procédure stockée Lst_fournis correspondant à la requête n°2 afficher le code des fournisseurs pour lesquels une commande a été passée.
Exécutez la pour vérifier qu’elle fonctionne conformément à votre attente.
Exécutez la commande SQL suivante pour obtenir des informations sur cette procédure stockée : */

delimiter $$
create procedure lst_fournis()
begin
/* allez hop hop hop au boulot*/




end $$
delimiter ;







/*
par la suite t'aura besoin de paramètres / variables.
c'est pareil qu'au dessus, sauf que tu devrais déclarer les paramètres.
le principal changement ici c'est que quand tu appelle ta fonction, tu mets dans les parenthèses les paramètres
que tu vas utiliser et leurs types.
par exemple nom_procedure(in param1 int, in param2 varchar (50))
et dans tes instruction, si tu veux que le paramètre soit appliqué, tu le met soit dans un critère de selection (select) 
soit dans un critère de modification (sur un update, ou même un insert, etc...)
par exemple 
[blabla...] where truc_ville = param2 and id_bidule= param1
le type de ton paramètre doit être du même tye que celui du champs que tu vas devoir couvrir.
*/


