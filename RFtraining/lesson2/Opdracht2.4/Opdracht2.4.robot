*** Settings ***  
Documentation    Om je tests onderhoudbaar te houden, kun je keywords maken van (delen van) tests die je in meerdere testgevallen gebruikt.
...    Pas dit toe bij de tests uit Opdracht 3.
Library    SeleniumLibrary    
Library    Collections    

*** Variables ***
${url}            http://localhost:7272
${browser}        chrome
${loginnaam}      demo
${correct_wachtwoord}     mode
${foutief_wachtwoord}     edom
${welkomstpagina}    Welcome Page
${foutpagina}    Error Page

&{correcte_inlog}    naam=demo    ww=mode    landingpage=${welkomstpagina}
&{foutieve_inlog}    naam=joost    ww=edom    landingpage=${foutpagina}


*** Test Cases ***
*** Test Cases ***
Log succesvol in
    Open de login pagina
    Vul loginnaam en wachtwoord in    ${correcte_inlog}
    Check de resultaatpagina    ${correcte_inlog}
    Close Browser
    
Log in met een foutief wachtwoord
    Open de login pagina
    Vul loginnaam en wachtwoord in    ${foutieve_inlog}
    Check de resultaatpagina    ${foutieve_inlog}
    Close Browser

*** Keywords ***
Open de login pagina
    Open Browser    ${url}    ${browser}

Vul loginnaam en wachtwoord in
    [Arguments]    ${login}
    Input Text    username_field    ${login.naam}
    Input Text    password_field    ${login.ww}
    Click Button    login_button

Check dat je succesvol bent ingelogd
    Title Should Be    ${welkomstpagina}
    
Check dat je login is mislukt
    Title Should Be    ${foutpagina}

Check de resultaatpagina
    [Arguments]    ${login}
    Title Should Be    ${login.landingpage}
    