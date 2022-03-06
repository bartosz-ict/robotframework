*** Settings ***  
Documentation    Bij een random lijst met waarden doe het volgende:
...              - Schrijf de voorbeeldlijst naar een .csv bestand.
...              - Bonus: zorg ervoor dat het bestand automatisch wordt opgeruimd
...              - Bonus 2: Zorg ervoor dat er max 10 woorden per regel staan
Library    OperatingSystem

*** Variables ***
@{voorbeeldlijst}    Lorem    ipsum    dolor    sit    amet    consectetur    adipisicing    elit    sed    do    eiusmod    tempor    incididunt    ut    labore    et    dolore    magna    aliqua

*** Test Cases ***
Opdracht3.6

