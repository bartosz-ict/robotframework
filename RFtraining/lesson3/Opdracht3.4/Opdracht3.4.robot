*** Settings ***
Documentation    Herschrijf het eerdere testgeval naar een Gherkin / Datadriven testgeval combinatie.
...    
Resource    Resources/Opdracht3.4.resource    

*** Test Cases ***
Opdracht3.4
    Open de login pagina
    Vul loginnaam en wachtwoord in    demo    edom
    Check dat je login is mislukt
    Close Browser


*** Keywords ***
