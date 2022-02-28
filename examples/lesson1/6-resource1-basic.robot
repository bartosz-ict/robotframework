*** Settings ***
Documentation    An example to show how a resource file can be imported and used.
Resource    6-resource2-file.resource

*** Keywords ***
kw    [Arguments]    ${input}    ${multiplier}    ${result}
    Given value of var <${input}> is present
    When value of var input is multiplied by <${multiplier}>
    Then value of var result should be <${result}>

*** Test Cases ***
Testcase 1    kw    1    2    2
Testcase 2    kw    2    2    4
Testcase 3    kw    4    4    16