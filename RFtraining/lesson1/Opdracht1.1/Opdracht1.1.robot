*** Settings ***
Documentation    Voer een eerste testgeval uit, en zorg dat deze een browser opent en navigeert naar Bartosz.nl
...              Bonus: Zoek uit op welke manier je de browser chrome en firefox kan kiezen.
...              Let op: Er zijn meerdere manieren om een testgeval in de IDE te starten.
Library    SeleniumLibrary


*** Test Cases ***
Open bartosz.nl in een browser
    Open Browser    https://www.bartosz.nl
