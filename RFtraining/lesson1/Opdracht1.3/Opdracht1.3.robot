*** Settings ***
Documentation    Hieronder staan de twee validatie tests uit de eerdere opdracht. 
          ...    Maak je test flexibeler, gebruik variabelen voor:​
          ...    - Browser​
          ...    - Username veld​
          ...    - Password veld​
          ...    - Etc.
          ...    Bonus:​
          ...    - Maak gebruik van een lijst variabele, wees creatief!​


Library     Browser    

*** Variables ***

*** Test Cases ***
Log succesvol in
    Open Browser     http://localhost:7272
    Type Text       id=username_field    demo
    Type Text       id=password_field    mode
    Click     id=login_button
    Get Title    ==  Welcome Page DEV
    Close Browser
    
Log in met een foutief wachtwoord
    Open Browser     http://localhost:7272
    Type Text       id=username_field    demo
    Type Text       id=password_field    edom
    Click     id=login_button
    Get Title    ==  Error Page DEV
    Close Browser
