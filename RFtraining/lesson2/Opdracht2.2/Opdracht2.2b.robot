*** Settings ***  
Documentation    Pas het gebruik van een dictionary toe aan het testobject uit het eerste lesblok.
          ...    Herschrijf de onderstaande test zodat de gebruikte testdata uit een dictionary komen.

Library    SeleniumLibrary    
Library    Collections    

Resource    Opdracht2.2b.resource

*** Variables ***
${url}=           http://localhost:7272
${browser}=       chrome
${loginnaam}=     demo
${correct_wachtwoord}=    mode
${foutief_wachtwoord}=    edom
${welkomstpagina}=    Welcome Page
${foutpagina}=    Error Page

*** Test Cases ***
Log succesvol in
    Open de login pagina
    Vul loginnaam en wachtwoord in    ${loginnaam}    ${correct_wachtwoord}
    Check de resultaatpagina    ${welkomstpagina}
    Close Browser
    
Log in met een foutief wachtwoord
    Open de login pagina
    Vul loginnaam en wachtwoord in    ${loginnaam}    ${foutief_wachtwoord}
    Check de resultaatpagina    ${foutpagina}
    Close Browser