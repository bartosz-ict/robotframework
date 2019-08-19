*** Settings ***
Test Template    kw

*** Keywords ***
kw    [Arguments]    ${USER}    ${PASSWORD}
    Log    argument1 = ${USER}
    Log    argument2 = ${PASSWORD}

*** Test Cases ***
Testcase
    #USERNAME    PASSWORD
     valid       valid 
     invalid     valid
     valid       invalid
     ${EMPTY}    valid
     valid       ${EMPTY}
     ${EMPTY}    ${EMPTY}
