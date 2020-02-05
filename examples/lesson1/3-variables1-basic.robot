*** Settings ***
Documentation   Overview of how to combine variables.

*** Variables ***
${brand_var}=    Lamborghini
${type_var}=     Countach

${concat_var}=    ${brand_var} ${type_var}
#Note the '1 space' difference between two variables

*** Test Cases ***
Test Case 1  
    Log    ${concat_var}    #Lamborghini Countach as value
