*** Settings ***
Library         Collections

*** Variables ***
@{LIST}         Position 1    Position 2
...             Position 3    Position 4

*** Test Cases ***
More List Actions
    ${Retrieve}=       Get From List    ${LIST}    0    
    ${CreatedList}=    Create List      Create 1    Create 2    ${Retrieve}
    
    ${Combination}=    Combine Lists    ${LIST}    ${CreatedList}
    Log List    ${Combination}
    
    #Count 'matched' patterns in a list
    ${countMatches}=    Get Match Count    ${Combination}    Position*

    Sort List    ${Combination}
    Log List    ${Combination}
    
    Remove Duplicates    ${Combination}