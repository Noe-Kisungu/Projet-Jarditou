<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_TANT_QUE"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" totalAffichages="1000" totalBoucles="5000000" arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#nb#0#pasliste" algoitem="nb PREND_LA_VALEUR 0"/>
        <item code="4#Entrez un nombre entre 10 et 20#1" algoitem="AFFICHER &quot;Entrez un nombre entre 10 et 20&quot;"/>
        <item code="15#nb &lt; 10 OU nb > 20" algoitem="TANT_QUE (nb &lt; 10 OU nb > 20) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="2#nb#pasliste" algoitem="LIRE nb"/>
            <item code="6#nb &lt; 10" algoitem="SI (nb &lt; 10) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#c'est plus#1" algoitem="AFFICHER &quot;c'est plus&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="6#nb > 20" algoitem="SI (nb > 20) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="4#C'est moin#1" algoitem="AFFICHER &quot;C'est moin&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                    </item>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
