*** Settings ***  
Documentation    Robot ondersteund verschillende vormen van validaties, maar één is een zogenaamde 'multi-line String Comparison'.
          ...    Gebruik de test van de vorige opdracht
          ...    Voer test uit, en vergelijk dat resultaat met het eerdere resultaat uit de vorige opdracht
          ...    Gebruik Multiline String Comparison om de bestanden te vergelijken
Library    OperatingSystem

*** Variables ***
@{voorbeeldlijst}    Lorem    ipsum    dolor    sit    amet    consectetur    adipisicing    elit    sed    do    eiusmod    tempor    incididunt    ut    labore    et    dolore    magna    aliqua
   
*** Test Cases ***
Opdracht3.7