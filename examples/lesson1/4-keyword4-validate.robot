*** Keywords ***
Scenario for a testcase   [Arguments]    ${boolean}
    [Documentation]    Robot is keyword driven, so every action contains a keyword.
    IF  ${boolean}
        Should Be True    ${boolean}
    ELSE
        Should Not Be True    ${boolean}
    END  

*** Test Cases ***
Test Case 1  
    Scenario for a testcase    True

Test Case 2
    Scenario for a testcase    False