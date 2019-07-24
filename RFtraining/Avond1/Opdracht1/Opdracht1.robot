*** Settings ***
Documentation    Maak een testgeval dat een browser opent en navigeert naar Bartosz.nl
Library    SeleniumLibrary    

*** Test Cases ***
Open bartosz.nl in een browser
    Open Browser    https://www.bartosz.nl