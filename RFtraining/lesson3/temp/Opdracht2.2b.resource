*** Settings ***
Library    SeleniumLibrary    
Library    Collections    

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
    