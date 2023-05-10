*** Settings ***
Documentation    Voer een eerste testgeval uit, en zorg dat deze een browser opent en navigeert naar Bartosz.nl
...              Je kunt voor de browser kiezen uit chromium en firefox.    
...              Let op: Er zijn meerdere manieren om een testgeval in Eclipse te starten.

Library    Browser    


*** Test Cases ***
Open bartosz.nl in een browser
    