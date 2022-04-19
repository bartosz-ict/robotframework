*** Settings ***
Library    Collections

*** Keywords ***
Random Generator
    ${generateList}=    Create List
    FOR     ${index}    IN RANGE    0    25
        ${str}=    Convert To String    ${index}
        Append To List    ${generateList}    ${str}
    END

    Evaluate    random.shuffle($generateList)  random
    [Return]    ${generateList}
