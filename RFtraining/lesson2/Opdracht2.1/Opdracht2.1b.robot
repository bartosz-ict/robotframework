*** Settings ***
Documentation    Gegeven de listvariabeles ${lijst1} en ${lijst2}. Doe de volgende dingen met de lijst:
...    - Voeg de 2 lijsten samen
...    - Verwijder de dubbele items
...    
Library    Collections    

*** Variables ***
${lijst}    

*** Test Cases ***
Opdracht2.1b
        