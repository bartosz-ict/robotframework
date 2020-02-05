*** Settings ***
Library         Collections

*** Variables ***
@{list}         Position 1    Position 2
...             Position 3    Position 4

${copyList}=    ${list}

*** Test Cases ***
Advanced Verification
    List should contain value        ${list}    Position 2
    List should not contain value    ${list}    Position 5
    
    Should contain match             ${list}    Position*
    Should not contain match         ${list}    *7*
    
    Lists should be equal            ${list}    ${copyList}