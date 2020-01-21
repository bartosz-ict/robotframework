*** Variables ***
${input}=    ${EMPTY}
${result}=    ${EMPTY}

*** Keywords ***
kw    [Arguments]    ${input}    ${multiplier}    ${result}
    Given value of var <${input}> is present
    When value of var input is multiplied by <${multiplier}>
    Then value of var result should be <${result}>

value of var <${input}> is present
    Set Test Variable    ${input}    
    Log    input variable = ${input}

value of var input is multiplied by <${multiplier}>
    ${result}=    evaluate    ${input} * ${multiplier}
    Set Test Variable    ${result}    
    log    ${input} * ${multiplier} = ${result}

value of var result should be <${expected}>
    Should Be Equal    ${result}    ${expected}

*** Test Cases ***
Testcase 1    kw    1    2    2
Testcase 2    kw    2    2    4
Testcase 3    kw    4    4    16