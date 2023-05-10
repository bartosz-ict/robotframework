*** Settings ***  
Documentation    Zorg dat een aantal stappen in je testgeval door functies / keywords worden uitgevoerd.
          ...    Pas dit toe bij de testgevallen uit de eerdere opdracht.

Library    Browser    

*** Variables ***
${url}=                   http://localhost:7272
${browser}=               chromium
${loginnaam}=             demo
${correct_wachtwoord}=    mode
${foutief_wachtwoord}=    edom
${welkomstpagina}=        Welcome Page DEV
${foutpagina}=            Error Page DEV

*** Test Cases ***
Log succesvol in
    Open Browser     ${url}    ${browser}
    Type Text       id=username_field    ${loginnaam}
    Type Secret       id=password_field    $correct_wachtwoord
    Click     id=login_button
    Get Title    ==  ${welkomstpagina}
    Close Browser
    
Log in met een foutief wachtwoord
    Open Browser     ${url}    ${browser}
    Type Text       id=username_field    ${loginnaam}
    Type Secret       id=password_field    $foutief_wachtwoord
    Click     id=login_button
    Get Title    ==  ${foutpagina}
    Close Browser
    
*** Keywords ***
