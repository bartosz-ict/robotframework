*** Settings ***  
Documentation    Met behulp van FOR loops kan er gemakkelijk testgegevens tijdens de uitvoer worden vastgelegd.
          ...    Voor bewijsvoering, leg de volgende zaken vast in onderstaande testgeval:
          ...    1. Leg de gegenereerde lijst vast
          ...    2. Leg het nummer vast waarop werd gecontroleerd

Library    Collections  

Resource   RandomGenerator.resource

*** Keywords ***
Verify number is in list    [Arguments]    ${list}    ${verify}
    ${max}=    Get Length    ${list}
    FOR    ${entry}    IN RANGE   0    ${max}+1
        Run Keyword If    ${entry} == ${max}    Fail    The number was not found.
        
        Continue For Loop If    ${list}[${entry}] != ${verify}
        Log    Succes! The number '${list}[${entry}]' is equal to the verification number '${verify}' 
        Exit For Loop If    ${list}[${entry}] == ${verify}
    END

tst    [Arguments]    ${verify}
   ${ReturnedList}=    Random Generator
    Verify Number is in list    ${ReturnedList}    ${verify}

*** Test Cases ***
Test 1 - Check number    tst    200
Test 2 - Check number    tst    20
        

