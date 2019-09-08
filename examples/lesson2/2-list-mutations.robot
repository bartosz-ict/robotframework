*** Settings ***
Library         Collections

*** Test Cases ***
Mutate a created List
    ${CreatedList}=    Create List      Create 1    Create 2
    
    #Add a new item to the list at last position
    Append To List    ${CreatedList}    Append 1    Append 2
    
    #Place an item in between other items at a position
    Insert Into List  ${CreatedList}    2    Insert 2
    
    #Remove an item from a position
    Remove From List  ${CreatedList}    0
    
    Log List          ${CreatedList}
