*** Settings ***
Documentation    Zorg ervoor dat alleen de gegevens specifiek voor het testgeval blijft staan.
          ...    Verplaats niet noodzakelijke gegevens naar een extern 'resource' bestand.

Library    SeleniumLibrary

*** Variables ***
${url}=           http://localhost:7272
${browser}=       chrome
${username}=     demo
${correct_wachtwoord}=    mode
${foutief_wachtwoord}=    edom
${welkomstpagina}=    Welcome Page
${foutpagina}=    Error Page

*** Keywords ***
ght
    Given browser of <${browser}> opens the correct url <${url}>
    When login name <${username}> and password ${${correct_wachtwoord}> are submitted by user
    Then verify that user is succesfully logged in
    And browser is closed

ghf
    Given browser of <${type}> opens the correct url <${url}>
    When login name <${username}> and password ${foutief_wachtwoord}> are submitted by user
    Then verify that user has failed to logged in
    And browser is closed

# Functions that support the gherkin functions that execute the test.
browser of <${type}> opens the correct url <${url}>
    Open Browser    ${url}    ${type}

login name <${name}> and password ${password}> are submitted by user
    [Arguments]    ${name}    ${password}
    Input Text    username_field    ${name}
    Input Text    password_field    ${password}
    Click Button    login_button

verify that user is succesfully logged in
    Title Should Be    ${welkomstpagina}
    
verify that user has failed to logged in
    Title Should Be    ${foutpagina}
    
browser is closed
    Close Browser

*** Test Cases ***
Log succesvol in    ght
    
Log in met een foutief wachtwoord    ghf