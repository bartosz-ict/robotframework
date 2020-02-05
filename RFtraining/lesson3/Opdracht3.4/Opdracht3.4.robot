*** Settings ***
Library    SeleniumLibrary    
Documentation    Naast de demo-omgeving DEV (port 7272) is er ook een op TEST (port 2727) 
...    Pas onderstaande test zo aan, dat je deze op beide omgevingen kan draaien m.b.v. omgevingsbestanden.
...    (maak gebruik van de elementen waarin deze omgevingen van elkaar verschillen)
Resource    resource.robot

*** Test Cases ***
Opdracht3.4
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    
# TODO meerdere resource files maken