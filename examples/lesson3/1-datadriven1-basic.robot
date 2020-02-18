*** Keywords ***
kw    [Arguments]    ${user}    ${password}    
    Log    ${user}
    Log    ${password}

*** Test Cases ***        
                        #USERNAME    PASSWORD
Valid Testcase      kw    valid       valid
Invalid User        kw    invalid     valid
Invalid Password    kw    valid       invalid
Empty User          kw    ${EMPTY}    valid
Empty Password      kw    valid       ${EMPTY}
Both empty          kw    ${EMPTY}    ${EMPTY}    

