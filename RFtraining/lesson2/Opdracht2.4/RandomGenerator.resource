*** Settings ***
Library    Collections

*** Keywords ***
Random Generator
    ${generateList}=    Create List
    FOR     ${index}    IN RANGE    0    25
       Append to list    ${generateList}    ${index}    
    END
    
    evaluate    random.shuffle($generateList)  random
    [return]    ${generateList}