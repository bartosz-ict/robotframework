*** Settings ***
Documentation   Overview of how to combine variables.

*** Variables ***
${var_brand}=    Lamborghini
${var_type}=     Countach

${var_concat}=    ${var_brand} ${var_type}
#Note the '1 space' difference between two variables

*** Test Cases ***
Test Case 1  
    Log    ${var_concat}    #Lamborghini Countach as value
