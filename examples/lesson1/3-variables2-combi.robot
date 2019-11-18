*** Settings ***
Documentation   Overview of how to combine variables to a new result

*** Variables ***
${var_brand}=    Lamborghini
${var_type}=     Countach

${Lamborghini-Countach}=    Oldtimer

*** Test Cases ***
Test Case 1  
    Log    ${${var_brand}-${var_type}}    #Oldtimer as value
