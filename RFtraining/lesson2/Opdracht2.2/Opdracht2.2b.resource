*** Keywords ***
Open de login pagina
    Open Browser    ${url}    ${browser}

Vul loginnaam en wachtwoord in
    [Arguments]    ${login}    ${wachtwoord}
    Input Text    username_field    ${login}
    Input Text    password_field    ${wachtwoord}
    Click Button    login_button

Check de resultaatpagina
    [Arguments]    ${pagina}
    Title Should Be    ${pagina}
