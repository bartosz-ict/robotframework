*** Settings ***
Documentation    Gegeven de lijsten ${lijst één met auto's} en ${lijst twee met auto's}. Doe de volgende dingen met de lijst:
...    - Voeg de 2 lijsten samen
...    - Verwijder de dubbele items
...    - Verifieer of de lijst ontdubbeld is
Library    Collections    

*** Variables ***
@{lijst één met auto's}      Mazda-3     BMW 1     Fiat Multipla    Volkswagen Polo
@{lijst twee met auto's}    Audi A3     Mazda-3    Opel Crossland X    Ford Focus

*** Test Cases ***
Opdracht2.1b
        