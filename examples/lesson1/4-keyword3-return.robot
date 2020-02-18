*** Keywords ***
Calculation Keyword   [Arguments]    ${value}
    [Documentation]    Robot is keyword driven, so every action contains a keyword.
    ${calculation}=    Multiply by itself    ${value} 
    
    Log    This value has been multiplied: "${calculation}"

Multiply by itself    [Arguments]    ${number}
    ${result}=    evaluate    ${number}*${number}
    
    [Return]    ${result}
    

*** Test Cases ***
Test Case 1  
    Calculation Keyword    4

Test Case 2  
    Calculation Keyword    10