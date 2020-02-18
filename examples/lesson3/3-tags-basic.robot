*** Keywords ***
kw    [Arguments]    ${user}    ${password}    
    Log    ${user}
    Log    ${password}

*** Test Cases ***        
Valid Testcase      kw    valid       valid
    [Tags]    Login    Valid
    
Invalid User        kw    invalid     valid
    [Tags]    Login    Invalid    User
    
Empty User          kw    ${EMPTY}    valid
    [Tags]    Login    Invalid    User    Empty

