*** Settings ***
Documentation   Overview of how to combine variables to a new result

*** Variables ***
${brand_var}=    Lamborghini
${type_var}=     Countach

${Lamborghini-Countach}=    Oldtimer

*** Test Cases ***
Test Case 1  
    Log    ${${brand_var}-${type_var}}    #Oldtimer as value
    