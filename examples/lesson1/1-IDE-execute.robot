*** Settings ***
Documentation    A simple example test to show what an IDE contains.

Library    Collections
Library    SeleniumLibrary

Force Tags    Overview    IDE    Tags    Example

*** Variables ***
${var_brand}     Ford
&{dct_car}       brand=Ford    type=Fiesta    fuel=Diesel
@{lst_sensors}   Parking    Climate    Seats    Collision

*** Keywords ***
Show all the values in a list    [Arguments]    ${list}
    [Documentation]    This function shows what content a list has in the log.

    Log List    ${list}
    
Show the value in a variable    [Arguments]    ${var}
    [Documentation]    This function shows what content a variable has in the log.
    
    Log    De variabele '${var}' staat in deze variabele.
    
*** Test Case ***
Test 1: Display what brand car is tested
   Show the value in a variable    ${var_brand}

Test 2: Display lijst
   Show all the values in a list    ${lst_sensors} 