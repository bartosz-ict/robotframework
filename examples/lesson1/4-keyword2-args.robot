*** Keywords ***
Keyword    [Arguments]    ${MANDATORY}    ${OPTIONAL}=Standard
    [Documentation]    Description for user keyword
    ...                Multiline supported with
    ...                So you can  write a bit more.

    Log    This value is mandatory: ${MANDATORY}     #Errors are returned if value not given
    Log    This value is optional: '${OPTIONAL}'    #If not used in test, then Default
    
    
*** Test Cases ***
Test Case 1  Keyword    Input
    
Test Case 2  Keyword    Value    Addition
