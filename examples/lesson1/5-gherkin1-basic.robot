*** Variables ***
${input}=    ${EMPTY}
${result}=    ${EMPTY}

*** Test Cases ***
Testcase
    Given value of var <1> is present
    When value of var input is multiplied by "2"
    Then value of var result should be [2]

*** Keywords ***
value of var <${input}> is present
    Set Test Variable    ${input}    
    Log    input variable = ${input}

value of var input is multiplied by "${multiplier}"
    ${result}=    evaluate    ${input} * ${multiplier}
    Set Test Variable    ${result}    
    log    ${input} * ${multiplier} = ${result}

value of var result should be [${expected}]
    Should Be Equal    ${result}    ${expected}

