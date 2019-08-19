*** Keywords ***
kw    [Arguments]    ${USER}    ${PASSWORD}    
    Log    ${USER}
    Log    ${PASSWORD}

*** Test Cases ***        
                        #USERNAME    PASSWORD
Valid Testcase      kw    valid       valid
Invalid User        kw    invalid     valid
Invalid Password    kw    valid       invalid
Empty User          kw    ${EMPTY}    valid
Empty Password      kw    valid       ${EMPTY}
Both empty          kw    ${EMPTY}    ${EMPTY}    

