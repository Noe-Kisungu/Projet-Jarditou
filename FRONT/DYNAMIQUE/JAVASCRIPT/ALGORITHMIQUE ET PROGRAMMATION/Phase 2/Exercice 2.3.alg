<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Votre prix toute taxes&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" totalAffichages="1000" nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#pht" algoitem="pht EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#ttva" algoitem="ttva EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pttc" algoitem="pttc EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez le prix ht :#0" algoitem="AFFICHER &quot;Entrez le prix ht :&quot;"/>
        <item code="2#pht#pasliste" algoitem="LIRE pht"/>
        <item code="4#Entrez le nombre d’articles :#0" algoitem="AFFICHER &quot;Entrez le nombre d’articles :&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="4#Entrez le taux de TVA#0" algoitem="AFFICHER &quot;Entrez le taux de TVA&quot;"/>
        <item code="2#ttva#pasliste" algoitem="LIRE ttva"/>
        <item code="5#pttc#nb * pht * (1 + ttva/100)#pasliste" algoitem="pttc PREND_LA_VALEUR nb * pht * (1 + ttva/100)"/>
        <item code="4#Votre prix toute taxes#1" algoitem="AFFICHER &quot;Votre prix toute taxes&quot;"/>
        <item code="3#pttc#0#pasliste" algoitem="AFFICHER pttc"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
