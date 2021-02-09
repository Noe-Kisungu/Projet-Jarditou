<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" epaisseurPoint="2" totalAffichages="1000" totalBoucles="5000000" maxBoucle="500000" epaisseurLigne="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#age" algoitem="age EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#perm" algoitem="perm EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#acc" algoitem="acc EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#assu" algoitem="assu EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Votre age:#1" algoitem="AFFICHER &quot;Votre age:&quot;"/>
        <item code="2#age#pasliste" algoitem="LIRE age"/>
        <item code="4#Nombre d'années de permis:#1" algoitem="AFFICHER &quot;Nombre d'années de permis:&quot;"/>
        <item code="2#perm#pasliste" algoitem="LIRE perm"/>
        <item code="4#Nombres d'accidents:#1" algoitem="AFFICHER &quot;Nombres d'accidents:&quot;"/>
        <item code="2#acc#pasliste" algoitem="LIRE acc"/>
        <item code="4#Nombres d'années d'assurance:#1" algoitem="AFFICHER &quot;Nombres d'années d'assurance:&quot;"/>
        <item code="2#assu#pasliste" algoitem="LIRE assu"/>
        <item code="6#age&lt;25 et perm&lt;2" algoitem="SI (age&lt;25 et perm&lt;2) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#rouge#1" algoitem="AFFICHER &quot;rouge&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#inassurable#1" algoitem="AFFICHER &quot;inassurable&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="6#(age&lt;25 ET perm>=2) OU (age>=25 ET perm&lt;2) ET acc==0" algoitem="SI ((age&lt;25 ET perm>=2) OU (age>=25 ET perm&lt;2) ET acc==0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#orange#1" algoitem="AFFICHER &quot;orange&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#inassurable#1" algoitem="AFFICHER &quot;inassurable&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="6#(age&lt;25 ET perm>=2) OU (age>=25 ET perm&lt;2) ET acc==1" algoitem="SI ((age&lt;25 ET perm>=2) OU (age>=25 ET perm&lt;2) ET acc==1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#rouge#1" algoitem="AFFICHER &quot;rouge&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#inassurable#1" algoitem="AFFICHER &quot;inassurable&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="6#(age>=25 ET perm>=2) ET acc==0" algoitem="SI ((age>=25 ET perm>=2) ET acc==0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#vert#1" algoitem="AFFICHER &quot;vert&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#(age>=25 ET perm>=2) ET acc==1" algoitem="SI ((age>=25 ET perm>=2) ET acc==1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#orange#1" algoitem="AFFICHER &quot;orange&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#(age>=25 ET perm>=2) ET acc==2" algoitem="SI ((age>=25 ET perm>=2) ET acc==2) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#inassurable#1" algoitem="AFFICHER &quot;inassurable&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
