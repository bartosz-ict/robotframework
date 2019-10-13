*** Keywords ***
kw    [Arguments]    ${USER}    ${PASSWORD}    
    Log    ${USER}
    Log    ${PASSWORD}

*** Test Cases ***        
Valid Testcase      kw    valid       valid
    [Tags]    Login    Valid
    
Invalid User        kw    invalid     valid
    [Tags]    Login    Invalid    User
    
Empty User          kw    ${EMPTY}    valid
    [Tags]    Login    Invalid    User    Empty

