*** Settings ***  
Documentation    Bij een random gegenereerde lijst doe het volgende:
...              - Bepaal de lengte
...              - Kies een nummer en kijk op welke positie deze staat
...              - Stop met zoeken zodra de verwachte waarde is gevonden
...              - Bonus: Zoek uit met welk keyword je het bovenstaande in één keer kan doen

Resource   Resources/RandomGenerator.resource

*** Test Cases ***
Opdracht3.2


*** Keywords ***
This keyword returns random numbers
    ${ReturnedList} =    Random Generator
    Log list    ${ReturnedList}
    [Return]    ${ReturnedList}