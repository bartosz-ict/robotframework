*** Settings ***
Documentation   Overview of different sections in Robot Framework.


*** Variables ***
${VARIABLE}     Value


*** Keywords ***
Name of a function    [Arguments]    ${VAR}
    [Documentation]    Description for keyword
    log    ${VAR}


*** Test Cases ***
Name of a test case  
    Name of a function    ${VARIABLE}


