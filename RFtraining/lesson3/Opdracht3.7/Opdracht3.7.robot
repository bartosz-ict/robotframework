*** Settings ***
Documentation    Robot ondersteund verschillende vormen van validaties, maar één is een zogenaamde 'multi-line String Comparison'.
...              Voer een testgeval uit, en leg de uitslag vast, nadat deze gecontroleerd is (neem hiervoor wat je in opdracht 3.6 hebt gemaakt).
...              Controleer of de 'verwachte' waarden gelijk zijn, met de daaropvolgende testuitvoeringen.
...              Let op de volgende zaken:
...              1. Leg een 'verwacht resultaat' vast bij een eerste testuitvoer
...              2. Leg een 'testresultaat' vast bij een daaropvolgende 
...              3. Vergelijk de beide testresultaten met elkaar.
Library    OperatingSystem


*** Variables ***
@{voorbeeldlijst}    Lorem    ipsum    dolor    sit    amet    consectetur    adipisicing    elit    sed    do    eiusmod    tempor    incididunt    ut    labore    et    dolore    magna    aliqua


*** Test Cases ***
Opdracht3.7
