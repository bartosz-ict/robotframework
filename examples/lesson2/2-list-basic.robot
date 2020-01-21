*** Settings ***
Library         Collections

*** Test Cases ***
Check List Actions
    #Create a list
    ${cities}=    Create List    Arnhem    Veenendaal    Den Haag    Apeldoorn

    #Retrieve the amount of positions in a list
    Get Length    ${cities}
    
    #Retrieve a specific value from a position in list
    ${retrieve}=    Get From List    ${cities}    0

    #Count specific values in a list
    ${countValue}=    Count Values in List    ${cities}    Arnhem
    
    #Show an overview of items in a list
    Log List    ${cities}