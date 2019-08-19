*** Keywords ***
Calculation Keyword   [Arguments]    ${Value}
    [Documentation]    Robot is keyword driven, so every action contains a keyword.
    ${Variable}=    Multiply by itself    ${Value} 
    
    Log    This value has been multiplied: "${variable}"

Multiply by itself    [Arguments]    ${argument}
    ${variable}=    evaluate    ${argument}*${argument}
    
    [Return]    ${variable}
    

*** Test Cases ***
Test Case 1  
    Calculation Keyword    4

Test Case 2  
    Calculation Keyword    10