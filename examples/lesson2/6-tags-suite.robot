*** Settings ***
Force Tags    Login

*** Keywords ***
kw    [Arguments]    ${user}    ${password}    
    Log    ${user}
    Log    ${password}

*** Test Cases ***        
Valid Testcase      kw    valid       valid
    [Tags]    Valid
    
Invalid User        kw    invalid     valid
    [Tags]    Invalid    User
    
Empty User          kw    ${EMPTY}    valid
    [Tags]    Invalid    User    Empty

