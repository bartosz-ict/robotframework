*** Settings ***
Force Tags    Login

*** Keywords ***
kw    [Arguments]    ${USER}    ${PASSWORD}    
    Log    ${USER}
    Log    ${PASSWORD}

*** Test Cases ***        
Valid Testcase      kw    valid       valid
    [Tags]    Valid
    
Invalid User        kw    invalid     valid
    [Tags]    Invalid    User
    
Empty User          kw    ${EMPTY}    valid
    [Tags]    Invalid    User    Empty

