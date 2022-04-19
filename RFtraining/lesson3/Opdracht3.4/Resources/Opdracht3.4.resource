*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Open de login pagina
    Open Browser    http://localhost:7272    chrome

Vul loginnaam en wachtwoord in
    [Arguments]    ${login}    ${wachtwoord}
    Input Text    username_field    ${login}
    Input Text    password_field    ${wachtwoord}
    Click Button    login_button

Check dat je login is mislukt
    Title Should Be    Error Page DEV
