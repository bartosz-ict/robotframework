*** Settings ***
Resource        4-gherkin1-testtemplate.resource

Test Template    Execution

*** Keywords ***
Execution    [Arguments]    ${input}    ${multiplier}    ${result}
    Given value of var <${input}> is present
    When value of var <${input}> is multiplied by <${multiplier}>
    Then value of var <${result}> should be <${result}>

*** Test Cases ***
Testcases
  #INPUT    MULTI   RESULT
    1         2        2
    2         2        4
    4         4        16