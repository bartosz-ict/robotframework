*** Settings ***
Documentation    Hieronder staan de tests uit Opdracht 2. Maak de tests flexibeler door harde waardes te vervangen door variabelen.

Library     SeleniumLibrary    
Resource    Resource.robot    

*** Variables ***

*** Test Cases ***
Log succesvol in
    Open Browser    http://localhost:7272    chrome
    Input Text    username_field    demo
    Input Text    password_field    mode
    Click Button    login_button
    Title Should Be    Welcome Page
    Close Browser
    
Log in met een foutief wachtwoord
    Open Browser    http://localhost:7272    chrome
    Input Text    username_field    demo
    Input Text    password_field    edom
    Click Button    login_button
    Title Should Be    Error Page
    Close Browser
