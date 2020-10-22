*** Settings ***
Documentation    Herschrijf het eerdere testgeval naar een Gherkin / Datadriven testgeval combinatie.
...    
Resource    Resources/Opdracht3.4.resource    

*** Test Cases ***
Opdracht3.4
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