*** Settings ***
Documentation    Gegeven onderstaande test. Maak een data-driven test op basis van deze test waarmee je makkelijk verschillende foutieve logins kan testen. 
...    Hint: Maak een keyword van de test en maak van de dingen die je wil variëren een variabele.
*** Test Cases ***
Opdracht3.1 Log in met een foutief wachtwoord
    Open Browser     http://localhost:7272    chrome
    Input Text       username_field    demo
    Input Text       password_field    edom
    Click Button     login_button
    Title Should Be  Error Page
    Close Browser
        
*** Keyword ***