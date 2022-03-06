*** Settings ***
Library    SeleniumLibrary

Test Setup        Open Browser    https://www.example.com
Test Teardown     Close all Browsers 

*** Test cases ***
Test 1 - Capture Bartosz
    Go To    https://www.bartosz.nl
    Capture Page Screenshot    filename=bartosz-{index}.png
    
Test 2 - Capture Google
    Go To    https://www.google.nl
    Capture Page Screenshot    filename=google-{index}.png
