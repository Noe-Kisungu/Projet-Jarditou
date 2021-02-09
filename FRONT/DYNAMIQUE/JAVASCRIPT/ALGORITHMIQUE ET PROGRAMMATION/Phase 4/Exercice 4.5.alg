<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="SI ((s == &quot;m&quot; ET a&lt;20) OU (s == &quot;f&quot; ET a&lt;18 OU a>35)) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" epaisseurLigne="2" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="s EST_DU_TYPE CHAINE" code="1#CHAINE#s"/>
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Veuillez entrer votre sexe (m ou f):&quot;" code="4#Veuillez entrer votre sexe (m ou f):#1"/>
        <item algoitem="LIRE s" code="2#s#pasliste"/>
        <item algoitem="AFFICHER &quot;Veuillez entrer votre age:&quot;" code="4#Veuillez entrer votre age:#1"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="SI (s == &quot;m&quot; ET a >= 20) ALORS" code="6#s == &quot;m&quot; ET a >= 20">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;imposable&quot;" code="4#imposable#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (s == &quot;f&quot; ET a >= 18 ET a&lt;=35) ALORS" code="6#s == &quot;f&quot; ET a >= 18 ET a&lt;=35">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;imposable&quot;" code="4#imposable#1"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="SI ((s == &quot;m&quot; ET a&lt;20) OU (s == &quot;f&quot; ET a&lt;18 OU a>35)) ALORS" code="6#(s == &quot;m&quot; ET a&lt;20) OU (s == &quot;f&quot; ET a&lt;18 OU a>35)">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;ni&quot;" code="4#ni#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
