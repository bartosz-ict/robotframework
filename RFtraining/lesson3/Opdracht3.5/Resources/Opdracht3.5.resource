*** Settings ***
Library    Browser

*** Keywords ***
Open de login pagina
    Open Browser    http://localhost:7272    chromium

Vul loginnaam en wachtwoord in
    [Arguments]    ${login}    ${wachtwoord}
    Type Text    id=username_field    ${login}
    Type Secret    id=password_field    $wachtwoord
    Click    id=login_button

Check dat je login is mislukt
    Get Title    ==    Error Page DEV
