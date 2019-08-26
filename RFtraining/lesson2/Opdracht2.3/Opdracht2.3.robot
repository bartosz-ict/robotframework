*** Settings ***  
Documentation    Om door verschillende elementen uit een lijst heen te 'loopen' kan er gebruik gemaakt worden van "FOR" loops.
          ...    Voer in één test de controle uit voor beide browsers door gebruik te maken van een FOR loop.
          ...    Let op de volgende zaken:
          ...    1. FOR loop moet om het gehele testgeval heen gezet worden
          ...    2. Je hebt een 'lijst' van browsers nodig (chrome/gc/firefox/ff)

Library    SeleniumLibrary    
Library    Collections    

Resource    Opdracht2.3.resource

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

*** Keyword ***
Voer de test uit met de volgende argumenten    [Arguments]    ${browser}    ${inlog}    ${resultaat}
    Open de login pagina    ${browser}
    Vul loginnaam en wachtwoord in    ${inlog}
    Check de resultaatpagina    ${resultaat}
    Close Browser

*** Test Cases ***
Log succesvol in    
    Voer de test uit met de volgende argumenten    ${browser}    ${correcte_inlog}    ${welkomstpagina}

Log in met een foutief wachtwoord
    Voer de test uit met de volgende argumenten    ${browser}    ${foutieve_inlog}    ${foutieve_inlog}