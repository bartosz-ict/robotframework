*** Settings ***
Test Template    kw

*** Keywords ***
kw    [Arguments]    ${user}    ${password}
    Log    argument1 = ${user}
    Log    argument2 = ${password}

*** Test Cases ***
Testcase
    #USERNAME    PASSWORD
     valid       valid 
     invalid     valid
     valid       invalid
     ${EMPTY}    valid
     valid       ${EMPTY}
     ${EMPTY}    ${EMPTY}
