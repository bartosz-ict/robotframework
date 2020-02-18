*** Settings ***
Documentation    Herschrijf het eerdere testgeval naar een Gherkin / Datadriven testgeval combinatie.
...    
Resource    opdracht3.2.resource    

*** Test Cases ***
Opdracht3.2
    [Template]    Log in met een foutief wachtwoord
    # user      # password
    demo        ${EMPTY}
    ${EMPTY}    ${EMPTY}
        
*** Keyword ***
Log in met een foutief wachtwoord
    [Arguments]    ${user}    ${password}
    Open de login pagina
    Vul loginnaam en wachtwoord in    ${user}    ${password}
    Check dat je login is mislukt
    Close Browser