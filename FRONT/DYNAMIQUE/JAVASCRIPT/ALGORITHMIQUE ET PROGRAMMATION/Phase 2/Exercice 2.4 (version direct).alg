<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="C PREND_LA_VALEUR &quot; me font mourir &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="A EST_DU_TYPE CHAINE" code="1#CHAINE#A"/>
        <item algoitem="B EST_DU_TYPE CHAINE" code="1#CHAINE#B"/>
        <item algoitem="C EST_DU_TYPE CHAINE" code="1#CHAINE#C"/>
        <item algoitem="D EST_DU_TYPE CHAINE" code="1#CHAINE#D"/>
        <item algoitem="E EST_DU_TYPE CHAINE" code="1#CHAINE#E"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="A PREND_LA_VALEUR &quot; belle marquise, &quot;" code="5#A#&quot; belle marquise, &quot;#pasliste"/>
        <item algoitem="B PREND_LA_VALEUR &quot; vos beaux yeux &quot;" code="5#B#&quot; vos beaux yeux &quot;#pasliste"/>
        <item algoitem="C PREND_LA_VALEUR &quot; me font mourir &quot;" code="5#C#&quot; me font mourir &quot;#pasliste"/>
        <item algoitem="D PREND_LA_VALEUR  &quot; d’amour &quot;" code="5#D# &quot; d’amour &quot;#pasliste"/>
        <item algoitem="E PREND_LA_VALEUR A + B + C + D" code="5#E#A + B + C + D#pasliste"/>
        <item algoitem="AFFICHER E" code="3#E#1#pasliste"/>
        <item algoitem="E PREND_LA_VALEUR B + C + D + A" code="5#E#B + C + D + A#pasliste"/>
        <item algoitem="AFFICHER E" code="3#E#1#pasliste"/>
        <item algoitem="E PREND_LA_VALEUR A + D + C + B" code="5#E#A + D + C + B#pasliste"/>
        <item algoitem="AFFICHER E" code="3#E#1#pasliste"/>
        <item algoitem="E PREND_LA_VALEUR B + D + C + A" code="5#E#B + D + C + A#pasliste"/>
        <item algoitem="AFFICHER E" code="3#E#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
