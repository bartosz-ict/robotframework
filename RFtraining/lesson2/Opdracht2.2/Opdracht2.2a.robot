*** Settings ***
Documentation    Gegeven de dictionary ${dict}. Doe de volgende dingen met de dictionary:
...    - Voeg een item toe
...    - Verwijder een item
...    - Lees één waarde van de lijst uit
...    - Bonus: Toon aan dat de dictionary een bepaalde key bevat.     
...    
Library    Collections    

*** Variables ***
&{dict}=    Mark=Utrecht    Fred=Eindhoven    Erika=Nijmegen    Lotte=Velp    

*** Test Cases ***
Opdracht2.2a
        