*** Settings ***
Library         Collections

*** Test Cases ***
Mutate a created List
    ${createdList}=    Create List      Create 1    Create 2
    
    #Add a new item to the list at last position
    Append To List    ${createdList}    Append 1    Append 2
    
    #Place an item in between other items at a position
    Insert Into List  ${createdList}    2    Insert 2
    
    #Remove an item from a position
    Remove From List  ${createdList}    0
    
    Log List          ${createdList}
