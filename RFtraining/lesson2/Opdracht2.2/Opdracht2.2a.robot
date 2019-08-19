*** Settings ***
Documentation    Gegeven de dictionary ${dict}. Doe de volgende dingen met de lijst:
...    - Voeg een item toe
...    - Verwijder een item
...    - Lees één waarde van de lijst uit
...    - Bonus: Toon aan dat de dictionary een bepaalde key bevat.     
...    
Library    Collections    

*** Variables ***
${lijst}    

*** Test Cases ***
Opdracht2.2a
        