*** Settings ***  
Documentation    Om je tests onderhoudbaar te houden, kun je keywords maken van (delen van) tests die je in meerdere testgevallen gebruikt.
...    Pas dit toe bij de tests uit Opdracht 3.
Library    SeleniumLibrary    

*** Variables ***
${url}            http://localhost:7272
${browser}        chrome
${loginnaam}      demo
${correct_wachtwoord}     mode
${foutief_wachtwoord}     edom
${welkomstpagina}    Welcome Page
${foutpagina}    Error Page

*** Test Cases ***
Log succesvol in
    Open Browser    ${url}    ${browser}
    Input Text    username_field    ${loginnaam}
    Input Text    password_field    ${correct_wachtwoord}
    Click Button    login_button
    Title Should Be    ${welkomstpagina}
    Close Browser
    
Log in met een foutief wachtwoord
    Open Browser    ${url}    ${browser}
    Input Text    username_field    ${loginnaam}
    Input Text    password_field    ${foutief_wachtwoord}
    Click Button    login_button
    Title Should Be    ${foutpagina}
    Close Browser
    