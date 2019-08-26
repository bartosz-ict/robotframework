*** Settings ***
Documentation    Gegeven de dictionary 'rdw'. Doe de volgende dingen met de lijst:
...    - Voeg een kenteken-merk combinatie toe
...    - Verwijder een combinatie
...    - Lees één waarde die gekoppeld is aan een kenteken
...    - Bonus: Toon aan dat de dictionary een bepaalde kenteken bevat.
...    
Library    Collections    

*** Variables ***
&{rdw}    HK-612-R=Peugeot    JT-998-D=Volkswagen    RF-008-T=Ford

*** Test Cases ***
Opdracht2.2a
        