*** Settings ***
Documentation   Overview of Settings

Resource        ../global/env/prod-1.resource

Library         Collections
Library         SeleniumLibrary

Force Tags      Overview    Testcase    Tags

Suite Setup     Function name    ${VARIABLE}
Suite Teardown  Function name    ${VARIABLE}

*** Variables ***
${VARIABLE}     Value
&{DICTIONARY}   KEY1=Value1   KEY2=Value2
@{LIST}         Position 1    Position 2
...             Position 3    Position 4

${VAR1}=    ${DICTIONARY}[KEY1]    #Geeft waarde "Value1"
${VAR2}=    ${LIST}[1]            #Geeft waarde "Position 1"

*** Keywords ***
Function name    [Arguments]    ${VAR}
    [Documentation]    Description for keyword
    log    ${VAR}

Gherkin keyword with ${VAR} included
    [Documentation]    Description for gherkin sentence
    log    ${VAR}

*** Test Cases ***
Test Case 1  Function name    ${VARIABLE}
    [Documentation]    Test documentation
    [Tags]             Subject    Regression    High

Test Case 2
    [Documentation]    Test documentation
    [Tags]             Subject    Non-functional    Low
    
    Given Gherkin keyword with ${VARIABLE} included