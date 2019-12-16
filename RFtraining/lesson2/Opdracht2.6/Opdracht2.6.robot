*** Settings ***  
Documentation    Robot ondersteund verschillende vormen van validaties, maar één is een zogenaamde 'multiline String Comparison'.
          ...    Voer een testgeval uit, en leg de uitslag vast, nadat deze gecontroleerd is.
          ...    Controleer of de 'verwachte' waarden gelijk zijn, met de daaropvolgende testuitvoeringen.
          ...    Let op de volgende zaken:
          ...    1. Leg een 'verwacht resultaat' vast bij een eerste testuitvoer
          ...    2. Leg een 'testresultaat' vast bij een daaropvolgende 
          ...    3. Vergelijk de beide testresultaten met elkaar.

Library    Collections  

Resource   RandomGenerator.resource
   
*** Test Cases ***
Opdracht2.6
