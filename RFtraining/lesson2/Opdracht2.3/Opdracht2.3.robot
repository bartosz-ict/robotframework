*** Settings ***  
Documentation    Om door verschillende elementen uit een lijst heen te 'loopen' kan er gebruik gemaakt worden van "FOR" loops.
          ...    Voer in één test de controle uit voor beide browsers door gebruik te maken van een FOR loop.
          ...    Let op de volgende zaken:
          ...    1. FOR loop moet om het gehele testgeval heen gezet worden
          ...    2. Je hebt een 'lijst' van browsers nodig (chrome/gc/firefox/ff)
          ...    3. De functie 'Open de login pagina' heeft een argument nodig waarin browser wordt ingevuld

Library    SeleniumLibrary    
Library    Collections    

*** Variables ***
${url}                    http://localhost:7272
${browser}                chrome
${loginnaam}              demo
${correct_wachtwoord}     mode
${foutief_wachtwoord}     edom
${welkomstpagina}         Welcome Page
${foutpagina}             Error Page

&{correcte_inlog}    naam=demo    ww=mode    landingpage=${welkomstpagina}
&{foutieve_inlog}    naam=joost    ww=edom    landingpage=${foutpagina}

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
    [Arguments]    ${browser}=chrome
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
    