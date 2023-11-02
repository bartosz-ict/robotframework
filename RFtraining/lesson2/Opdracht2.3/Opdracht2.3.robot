*** Settings ***
Resource    Resources/Opdracht2.3.resource
Documentation    Naast de demo-omgeving DEV (port 7272) is er ook een op TEST (port 2727) 
          ...    Creëer 2 resource bestanden, elk voor een aparte omgeving.
          ...    Vul een ‘tijdelijke’ placeholder in settings.json voor validaties
          ...    Run de testgevallen voor beide omgevingen met een argument file


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