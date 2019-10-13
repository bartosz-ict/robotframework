*** Keywords ***
value of var <${input}> is present
    Set Test Variable    ${input}    
    Log    input variable = ${input}

value of var input is multiplied by "${multiplier}"
    ${var_result}=    evaluate    ${input} * ${multiplier}
    Set Test Variable    ${result}    
    log    ${input} * ${multiplier} = ${result}

value of var result should be [${expected}]
    Should Be Equal    ${result}    ${expected}