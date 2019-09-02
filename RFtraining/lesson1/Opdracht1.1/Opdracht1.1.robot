*** Settings ***
Documentation    Voer een eerste testgeval uit, en zorg dat deze een browser opent en navigeert naar Bartosz.nl
...              Let op: Er zijn meerdere manieren om een testgeval in Eclipse te starten.

Library    SeleniumLibrary    

*** Test Cases ***
Open bartosz.nl in een browser
    Open Browser    https://www.bartosz.nl
    Close Browser