*** Settings ***  
Documentation    Bij een random gegenereerde lijst doe het volgende:
...              - Schrijf de voorbeeldlijst naar een .csv bestand.
...              - Bonus: zorg ervoor dat het bestand automatisch wordt opgeruimd
...              - Bonus 2: Zorg ervoor dat er max 10 woorden per regel staan
Library    OperatingSystem


*** Variables ***
@{voorbeeldlijst}    Lorem    ipsum    dolor    sit    amet    consectetur    adipisicing    elit    sed    do    eiusmod    tempor    incididunt    ut    labore    et    dolore    magna    aliqua

*** Test Cases ***
Opdracht2.4
    Remove File    ${CURDIR}${/}a.csv
    FOR    ${item}    IN    @{voorbeeldlijst}
        Append To File    ${CURDIR}${/}a.csv    ${item}\n
    END

