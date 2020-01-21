*** Settings ***
Documentation    This file is a resource example that can be imported.

*** Variables ***
${input}=    ${EMPTY}
${result}=    ${EMPTY}

*** Keywords ***
value of var <${input}> is present
    Set Test Variable    ${input}    
    Log    input variable = ${input}

value of var input is multiplied by <${multiplier}>
    ${result}=    evaluate    ${input} * ${multiplier}
    Set Test Variable    ${result}    
    log    ${input} * ${multiplier} = ${result}

value of var result should be <${expected}>
    Should Be Equal    ${result}    ${expected}