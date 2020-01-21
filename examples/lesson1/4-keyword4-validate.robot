*** Keywords ***
Scenario for a testcase   [Arguments]    ${boolean}
    [Documentation]    Robot is keyword driven, so every action contains a keyword.
    ${result}=    Run keyword if    ${boolean}    Fill a Variable    VALIDATED VALUE
    Validate with expectation   ${result}

Fill a variable    [Arguments]    ${argument}
    ${variable}=    Set Variable    ${argument}
    [Return]    ${variable}
    
Validate with expectation   [Arguments]    ${INPUT}
    Should Be True   '${INPUT}' == 'VALIDATED VALUE'    

*** Test Cases ***
Test Case 1  
    Scenario for a testcase    True

Test Case 2
    Scenario for a testcase    False