*** Settings ***  
Documentation    Om door verschillende elementen uit een lijst heen te 'loopen' kan er gebruik gemaakt worden van "FOR" loops.
          ...    Voer in één test de controle uit voor beide browsers door gebruik te maken van een FOR loop.
          ...    Let op de volgende zaken:
          ...    1. Bepaal de lengte van de lijst met 'Get Length'
          ...    2. Kies een favoriet nummer, en bepaal op welke positie in de lijst deze staat.
          ...    3. Wanneer de verwachte waarde gevonden wordt, stop met zoeken.

Library    SeleniumLibrary    
Library    Collections  

Resource   RandomGenerator.resource

*** Keywords ***

*** Test Cases ***
This test checks for random numbers
    ${ReturnedList}=    Random Generator
    Log list    ${ReturnedList}

