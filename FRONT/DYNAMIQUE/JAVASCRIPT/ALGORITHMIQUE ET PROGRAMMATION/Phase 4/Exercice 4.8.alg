<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="SI ((M==2  ET J==29) ) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" totalBoucles="5000000" maxBoucle="500000" nbDecimales="8" totalAffichages="1000" arrondiAuto="vrai" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="J EST_DU_TYPE NOMBRE" code="1#NOMBRE#J"/>
        <item algoitem="M EST_DU_TYPE NOMBRE" code="1#NOMBRE#M"/>
        <item algoitem="A EST_DU_TYPE NOMBRE" code="1#NOMBRE#A"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE J" code="2#J#pasliste"/>
        <item algoitem="LIRE M" code="2#M#pasliste"/>
        <item algoitem="LIRE A" code="2#A#pasliste"/>
        <item algoitem="SI (J&lt;0 ET J>31) ALORS" code="6#J&lt;0 ET J>31">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;DATE INVALIDE &quot;" code="4#DATE INVALIDE #0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI ((M==2 OU M==4 OU M==6 OU M==9 OU M==11) ET J>30) ALORS" code="6#(M==2 OU M==4 OU M==6 OU M==9 OU M==11) ET J>30">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;DATE INVALIDE&quot;" code="4#DATE INVALIDE#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="SI ((M==2  ET J==29) ) ALORS" code="6#(M==2  ET J==29) ">
                            <item algoitem="DEBUT_SI" code="7#debutsi"/>
                            <item algoitem="SI ((A%4==0) OU (A%400==0) ) ALORS" code="6#(A%4==0) OU (A%400==0) ">
                                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                                <item algoitem="AFFICHER &quot;DATE VALIDE&quot;" code="4#DATE VALIDE#0"/>
                                <item algoitem="FIN_SI" code="8#finsi"/>
                                <item algoitem="SINON" code="9#sinon">
                                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                                    <item algoitem="AFFICHER &quot;DATE INVALIDE &quot;" code="4#DATE INVALIDE #0"/>
                                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                                </item>
                            </item>
                            <item algoitem="FIN_SI" code="8#finsi"/>
                        </item>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
