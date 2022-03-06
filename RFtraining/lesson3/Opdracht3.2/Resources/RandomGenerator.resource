*** Settings ***
Library    Collections

*** Keywords ***
Random Generator
    ${generateList}=    Create List
    FOR     ${index}    IN RANGE    0    25
        ${str}=    Convert To String    ${index}
       Append to list    ${generateList}    ${str}
    END
    
    evaluate    random.shuffle($generateList)  random
    [return]    ${generateList}