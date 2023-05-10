*** Settings ***
Documentation    Verplaats alle keywords, libraries en variabelen uit je test suite naar resource bestand(en).
           ...   Importeer één of meerdere resource bestanden om testsuite weer te laten werken.​

Library    Browser


*** Variables ***
${url}=           http://localhost:7272
${browser}=       chromium
${username}=     demo
${correct_wachtwoord}=    mode
${foutief_wachtwoord}=    edom
${welkomstpagina}=    Welcome Page DEV
${foutpagina}=    Error Page DEV

*** Test Cases ***
Log succesvol in    ght
    
Log in met een foutief wachtwoord    ghf
    
*** Keywords ***
ght
    Given browser of <${browser}> opens the correct url <${url}>
    When login name <${username}> and password <${correct_wachtwoord}> are submitted by user
    Then verify that user is succesfully logged in
    And browser is closed

ghf
    Given browser of <${browser}> opens the correct url <${url}>
    When login name <${username}> and password <${foutief_wachtwoord}> are submitted by user
    Then verify that user has failed to logged in
    And browser is closed

# Functions that support the gherkin functions that execute the test.
browser of <${type}> opens the correct url <${url}>
    Open Browser    ${url}    ${type}

login name <${name}> and password <${password}> are submitted by user
    Type Text    id=username_field    ${name}
    Type Secret    id=password_field    $password
    Click    id=login_button

verify that user is succesfully logged in
    Get Title    ==    ${welkomstpagina}
    
verify that user has failed to logged in
    Get Title    ==    ${foutpagina}
    
browser is closed
    Close Browser
