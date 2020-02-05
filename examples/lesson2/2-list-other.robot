*** Settings ***
Library         Collections

*** Variables ***
@{list}         Position 1    Position 2
...             Position 3    Position 4

*** Test Cases ***
More List Actions
    ${retrieve}=       Get From List    ${list}    0    
    ${createdList}=    Create List      Create 1    Create 2    ${retrieve}
    
    ${combination}=    Combine Lists    ${list}    ${createdList}
    Log List    ${combination}
    
    #Count 'matched' patterns in a list
    ${countMatches}=    Get Match Count    ${combination}    Position*

    Sort List           ${combination}
    Log List            ${combination}
    
    Remove Duplicates   ${combination}