*** Settings ***
Documentation   Overview of how to combine variables to a new result

*** Variables ***
${brand_var}=    Lamborghini
${type_var}=     Countach

${Lamborghini_Countach}=    Oldtimer

*** Test Cases ***
Test Case 1  
    Log    ${${brand_var}_${type_var}}    #Oldtimer as value
    