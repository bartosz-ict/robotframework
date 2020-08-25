*** Settings ***
Documentation    Gegeven onderstaande test. Maak een data-driven test op basis van onderstaande test waarmee je
...    makkelijk verschillende foutieve logins kan testen. 
...    Hint: Maak een keyword van de test en maak van de dingen die je wil variëren een variabele.

Resource    Opdracht3.3.resource    

*** Test Cases ***
Log in met een foutief wachtwoord
    Open de login pagina
    Vul loginnaam en wachtwoord in    demo    edom
    Check dat je login is mislukt
    Close Browser