*** Settings ***
Documentation    Gegeven de listvariabele ${lijst}. Doe de volgende dingen met de lijst:
...    - Voeg een item toe
...    - Verwijder een item
...    - Lees één waarde van de lijst uit
...    - Bonus: maak een nieuwe lijst die de gesorteerde variant is van de originele lijst     
...    
Library    Collections    

*** Variables ***
${lijst}    

*** Test Cases ***
Opdracht2.1a
        