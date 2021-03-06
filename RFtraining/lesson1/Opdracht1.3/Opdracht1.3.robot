*** Settings ***
Documentation    Hieronder staan de twee validatie tests uit de eerdere opdracht. 
          ...    Maak de tests flexibeler door harde waardes te vervangen door variabelen.

Library     SeleniumLibrary    

*** Variables ***

*** Test Cases ***
Log succesvol in
    Open Browser     http://localhost:7272    chrome
    Input Text       username_field    demo
    Input Text       password_field    mode
    Click Button     login_button
    Title Should Be  Welcome Page DEV
    Close Browser
    
Log in met een foutief wachtwoord
    Open Browser     http://localhost:7272    chrome
    Input Text       username_field    demo
    Input Text       password_field    edom
    Click Button     login_button
    Title Should Be  Error Page DEV
    Close Browser
