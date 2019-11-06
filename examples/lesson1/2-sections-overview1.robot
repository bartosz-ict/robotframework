*** Settings ***
Documentation   Overview of different sections in Robot Framework.

*** Variables ***
${var_brand}     Lada

*** Keywords ***
Show value of variable in log    [Arguments]    ${value}
    [Documentation]    Return the value of a variable in the log.
    log    ${value}

*** Test Cases ***
Test 1: Show the brand which is tested  
    Show value of variable in log    ${var_brand}


