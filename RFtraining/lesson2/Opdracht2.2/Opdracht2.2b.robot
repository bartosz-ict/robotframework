*** Settings ***  
Documentation    Wanneer je meerdere testomgevingen hebt, is het soms handig om je testen op meerdere omgevingen te kunnen draaien.
...    <Beschrijf hier de 2 testomgevingen>
...    Maak dictionaries voor de DEV en de TEST omgeving waarin je de variabelen die verschillend zijn per omgeving als keys opneemt.
...    Pas de test aan, zodat de omgevings-dictionary wordt gebruikt en draai de test voor beide omgevingen.

Resource    Opdracht2.2b.resource

*** Variables ***
${url}=                http://localhost:7272
${browser}=            chrome
${loginnaam}=          demo
${correct_wachtwoord}=    mode
${foutief_wachtwoord}=    edom
${welkomstpagina}=     Welcome Page
${foutpagina}=         Error Page

&{correcte_inlog}=   naam=demo    ww=mode    landingpage=${welkomstpagina}
&{foutieve_inlog}=   naam=joost    ww=edom    landingpage=${foutpagina}


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