*** Settings ***
Library    Collections
Library    SeleniumLibrary

Test Setup        Run Keywords
...               Open Browser  https://www.example.com  AND
...               Log           Setup entry executed

Test Teardown     Run Keywords
...               Close Browser                          AND 
...               Log           Teardown entry executed

*** Test cases ***
Test 1 - Capture Bartosz
    [Setup]
    Log    No browser, so 'Go To' will fail
    Go To    https://www.bartosz.nl

    
Test 2 - Capture Google
    [Teardown]    NONE
    Go To    https://www.google.nl
    Capture Page Screenshot    filename=google-{index}.png

Test 3 - Verify which browsers are still open
    ${browsers_lst}=    Get Browser Ids
    log list    ${browsers_lst}