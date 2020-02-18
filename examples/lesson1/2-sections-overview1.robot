*** Settings ***
Documentation   Overview of different sections (Settings, 
...             Variables, Keywords and Test Cases) in RF.

*** Variables ***
${brand_var}     Lada

*** Keywords ***
Show value of variable in log    [Arguments]    ${value}
    [Documentation]    Return the value of a variable in the log.
    log    ${value}

*** Test Cases ***
Test 1: Show the brand which is tested  
    Show value of variable in log    ${brand_var}