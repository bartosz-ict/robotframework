*** Settings ***
Documentation    Vervang in het in opdracht 1 gemaakte testgeval hardgecodeerde tekst door variabelen.   
Library    SeleniumLibrary    

*** Variables ***


*** Test Cases ***
Open bartosz.nl in een browser
    Open Browser    http://www.bartosz.nl    Chrome
    
Open bartosz.nl in een browser met variabelen
    
