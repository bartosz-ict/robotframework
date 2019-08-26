*** Settings ***
Documentation    Gegeven de lijst van voornamen. Doe de volgende dingen met de lijst:
...    - Voeg je eigen naam toe
...    - Verwijder een naam van de lijst
...    - Lees één naam van de lijst uit en zet deze in een variabele
...    - Bonus: maak een nieuwe lijst die de gesorteerde variant is van de originele lijst
...    
Library    Collections

*** Variables ***
@{voornamen}    Sebastiaan    Gerwin    Pascal    Erik    Vincent    Maarten

*** Test Cases ***
Opdracht2.1a
        