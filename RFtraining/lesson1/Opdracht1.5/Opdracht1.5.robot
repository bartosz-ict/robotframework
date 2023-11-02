*** Settings ***
Documentation    
        ...    Creëer een drietal keywords met daarin functies:​
        ...    - Preconditie​
        ...    - Actie​
        ...    - Resultaat​
        ...    Definieer één keyword en gebruik daarin de andere Gherkin keywords​
        ...    Roep het Gherkin keyword aan in je testgevallen​

Library    Browser    


*** Variables ***
${url}=           http://localhost:7272
${browser}=       chromium
${loginnaam}=     demo
${correct_wachtwoord}=    mode
${foutief_wachtwoord}=    edom
${welkomstpagina}=    Welcome Page DEV
${foutpagina}=    Error Page DEV

*** Test Cases ***
Log succesvol in
    Open de login pagina
    Vul loginnaam en wachtwoord in    ${loginnaam}    ${correct_wachtwoord}
    Check dat je succesvol bent ingelogd
    Close Browser
    
Log in met een foutief wachtwoord
    Open de login pagina
    Vul loginnaam en wachtwoord in    ${loginnaam}    ${foutief_wachtwoord}
    Check dat je login is mislukt
    Close Browser

*** Keywords ***
Open de login pagina
    Open Browser    ${url}    ${browser}

Vul loginnaam en wachtwoord in
    [Arguments]    ${login}    ${wachtwoord}
    Type Text    id=username_field    ${login}
    Type Secret    id=password_field    $wachtwoord
    Click    id=login_button

Check dat je succesvol bent ingelogd
    Get Title    ==    ${welkomstpagina}
    
Check dat je login is mislukt
    Get Title    ==    ${foutpagina}
