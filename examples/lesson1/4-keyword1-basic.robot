*** Keywords ***
Function Name    [Arguments]    ${VALUE}
    [Documentation]    Description for user keyword
    ${ITEM}=    User defined    ${VALUE}    #User created keyword
    Log    ${ITEM}      #Log is a builtIn keyword
    
User defined    [Arguments]    ${ARG}
    [Documentation]    A self defined keyword for setting a variable
    ${VAR}=    Set Variable    ${ARG}    #Set Variable is BuiltIn
    [Return]    ${VAR}

*** Test Cases ***
Test Case 1    Function Name    Waarde
