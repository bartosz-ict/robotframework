*** Settings ***
Library         Collections

*** Variables ***
@{LIST}         Position 1    Position 2
...             Position 3    Position 4

${COPYLIST}=    ${LIST}

*** Test Cases ***
Advanced Verification
    List should contain value        ${LIST}    Position 2
    List should not contain value    ${LIST}    Position 5
    
    Should contain match             ${LIST}    Position*
    Should not contain match         ${LIST}    *7*
    
    Lists should be equal            ${LIST}    ${COPYLIST}