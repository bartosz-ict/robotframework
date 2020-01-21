*** Settings ***
Documentation    A simple example test to show what an IDE contains.

Library    Collections
Library    SeleniumLibrary

Force Tags    Overview    IDE    Tags    Example

*** Variables ***
${brand_var}     Ford
&{car_dct}       brand=Ford    type=Fiesta    fuel=Diesel
@{sensors_lst}   Parking    Climate    Seats    Collision

*** Keywords ***
Show all values in a list    [Arguments]    ${list}
    [Documentation]    This function shows what content a list has in the log.

    Log List    ${list}
    
Show the value in a variable    [Arguments]    ${var}
    [Documentation]    This function shows what content a variable has in the log.
    
    Log    The variable value '${var}' is the content.
    
*** Test Case ***
Test 1: Display what brand car is tested
   Show the value in a variable    ${brand_var}

Test 2: Display list
   Show all values in a list    ${sensors_lst} 