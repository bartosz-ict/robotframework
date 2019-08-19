*** Settings ***
Library         Collections

*** Variables ***
@{LIST}         Position 1    Position 2
...             Position 3    Position 4

*** Test Cases ***
Mutate List
    ${CreatedList}=    Create List      Create 1    Create 2
    Append To List    ${CreatedList}    Append 1    Append 2    #Laatste positie
    Remove From List  ${CreatedList}    0
    Insert Into List    ${CreatedList}    2    Insert 2
    Log List    ${CreatedList}
    
Check List Actions
    Get Length    ${LIST}
    ${CountValue}=    Count Values in List    ${LIST}    Position
    ${CountMatch}=     Get Match Count    ${LIST}    Position*    
    Log List    ${LIST}