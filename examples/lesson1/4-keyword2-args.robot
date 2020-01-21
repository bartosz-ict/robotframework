*** Keywords ***
Notation Function    [Arguments]    ${mandatory}    ${optional}=Standard
    [Documentation]    Description for user keyword
    ...                Multiline supported with
    ...                So you can  write a bit more.

    Log    This value is mandatory: ${mandatory}  #Errors are returned if value not given
    Log    This value is optional: '${optional}'  #If not used in test, then Default
    
    
*** Test Cases ***
Test Case 1  Notation Function    Input
    
Test Case 2  Notation Function    Value    Extra
