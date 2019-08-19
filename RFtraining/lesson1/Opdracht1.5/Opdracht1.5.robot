*** Settings ***
Documentation    Schrijf één van onderstaande testgevallen om in de Gherkin-stijl. 
          ...    Gebruik hiervoor de volgende notatie richtlijnen:
          ...    Given -> Opstellen van een preconditie
          ...    When  -> Uitvoeren van een handeling
          ...    Then  -> Verificatie van een resultaat

Library    SeleniumLibrary    

*** Variables ***
${url}=           http://localhost:7272
${browser}=       chrome
${loginnaam}=     demo
${correct_wachtwoord}=    mode
${foutief_wachtwoord}=    edom
${welkomstpagina}=    Welcome Page
${foutpagina}=    Error Page

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
    Input Text    username_field    ${login}
    Input Text    password_field    ${wachtwoord}
    Click Button    login_button

Check dat je succesvol bent ingelogd
    Title Should Be    ${welkomstpagina}
    
Check dat je login is mislukt
    Title Should Be    ${foutpagina}
