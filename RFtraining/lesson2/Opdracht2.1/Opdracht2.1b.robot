*** Settings ***
Documentation    Gegeven de listvariabeles 'managers' en 'medewerkers'. Doe de volgende dingen met de lijst:
...    - Voeg de 2 lijsten samen
...    - Verwijder de dubbele items

Library    Collections    

*** Variables ***
@{managers}    Vincent    Maarten    Rein    John    Jochem    Maarten    Rein

@{medewerkers}    Erik    Pascal    Gerwin    Sebastiaan    Gerwin    Erik

*** Test Cases ***
Opdracht2.1b
        