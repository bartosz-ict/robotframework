*** Settings ***
Library         Collections

*** Test Cases ***
Mutate dictionary
    ${createDict}=    Create Dictionary    Key4=Value4    Key5=Value5
    
    #Add key+value pair to the dictionary
    Set To Dictionary         ${createDict}    KeySet    ValueAdded
    Set To Dictionary         ${createDict}    Key4=Value4Updated
    
    ${copyDict}=    Copy Dictionary    ${createDict}
    #Remove a key+value pair from dictionary
    Remove From Dictionary    ${CreateDict}    Key5
    Log Dictionary            ${createDict}

    #Delete all item except for the 'kept' item
    Keep in Dictionary        ${CreateDict}    KEY2
    
    Log Dictionary            ${CreateDict}
    Log Dictionary            ${copyDict}
