*** Settings ***
Documentation    Gegeven onderstaande test. Herschrijf één testgeval zodat deze gebruikt maakt van de 
...              Testtemplate functionaliteit in Robot.
...              Hint: Maak een keyword van de test en maak van de dingen die je wil variëren een variabele.

Resource    Resources/Opdracht3.3.resource    

*** Test Cases ***
Log in met een foutief wachtwoord
    Open de login pagina
    Vul loginnaam en wachtwoord in    demo    edom
    Check dat je login is mislukt
    Close Browser