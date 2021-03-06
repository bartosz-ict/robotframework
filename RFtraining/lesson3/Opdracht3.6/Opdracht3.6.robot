*** Settings ***
Documentation    De suite bevat twee testen, waarbij de tweede test in eerste instantie zal falen.
...              Zorg er eerst voor dat de browser altijd wordt afgesloten, ook als de test faalt. 
...              Fix daarna de tweede test.
...              Bonus: gebruik een suite setup/teardown om hetzelfde te bereiken.

Resource    Resources/Opdracht3.6.resource

*** Test Cases ***
Opdracht3.6.1
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    
Opdracht3.6.2
    Open Browser To Login Page
    Input Username    demo
    Input Password    m0de
    Submit Credentials
    Welcome Page Should Be Open


