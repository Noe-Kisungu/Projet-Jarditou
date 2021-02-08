<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="SI (s == F ET (a >= 18 ET a =&lt; 35)) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" arrondiAuto="vrai" totalAffichages="1000" totalBoucles="5000000" maxBoucle="500000" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="s EST_DU_TYPE NOMBRE" code="1#NOMBRE#s"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Veuillez entrer votre sexe (M ou F):&quot;" code="4#Veuillez entrer votre sexe (M ou F):#1"/>
        <item algoitem="LIRE s" code="2#s#pasliste"/>
        <item algoitem="AFFICHER &quot;Veuillez entrer votre age:&quot;" code="4#Veuillez entrer votre age:#1"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="SI (s == M ET a >= 20) ALORS" code="6#s == M ET a >= 20">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;imposable&quot;" code="4#imposable#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;non imposable&quot;" code="4#non imposable#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="SI (s == F ET (a >= 18 ET a =&lt; 35)) ALORS" code="6#s == F ET (a >= 18 ET a =&lt; 35)">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;imposable&quot;" code="4#imposable#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;non imposable&quot;" code="4#non imposable#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="" code="103#commentaire"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
