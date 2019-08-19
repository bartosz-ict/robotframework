*** Settings ***
Library         Collections

*** Variables ***
@{LIST}         Position 1    Position 2
...             Position 3    Position 4

*** Test Cases ***
More List Actions
    ${Retrieve}=    Get From List    ${LIST}    0    

    ${CreatedList}=    Create List      Create 1    Create 2    ${Retrieve}
    Append To List    ${CreatedList}    Append 1    Append 2    #Laatste positie
    Remove From List  ${CreatedList}    0
    Insert Into List    ${CreatedList}    2    Insert 2
    
    ${Combination}=    Combine Lists    ${LIST}    ${CreatedList}
    Log List    ${Combination}
    
    Sort List    ${Combination}
    Log List    ${Combination}
    
    Remove Duplicates    ${Combination}
    