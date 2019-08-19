*** Keywords ***
Example function or keyword   [Arguments]    ${BOOL}
    [Documentation]    Robot is keyword driven, so every action contains a keyword.
    ${VALUE}=    Run keyword if    ${BOOL}    Keyword    INPUT 
    Validate    ${VALUE}

Keyword    [Arguments]    ${ARGUMENT}
    ${VARIABLE}=    Set Variable    ${ARGUMENT}
    [Return]    ${VARIABLE}
    
Validate    [Arguments]    ${INPUT}
    Should Be True   '${INPUT}' == 'INPUT'    

*** Test Cases ***
Test Case 1  
    Example function or keyword    True

Test Case 2  
    Example function or keyword    False