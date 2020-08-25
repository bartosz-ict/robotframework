*** Settings ***
Resource    Opdracht3.4.resource
Documentation    Naast de demo-omgeving DEV (port 7272) is er ook een op TEST (port 2727) 
...    Pas onderstaande test zo aan, dat je deze op beide omgevingen kan draaien m.b.v. omgevingsbestanden.
...    (maak gebruik van de elementen waarin deze omgevingen van elkaar verschillen)

*** Test Cases ***
Opdracht2.3.1
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    

Opdracht2.3.2
    Open Browser To Login Page
    Input Username    demo
    Input Password    m0de
    Submit Credentials
    Login Should Have Failed