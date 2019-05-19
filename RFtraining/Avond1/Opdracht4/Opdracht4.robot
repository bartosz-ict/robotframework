*** Settings ***  
Documentation    Maak een data driven testsuite door gebruik te maken van een test template. Geef het template (maak een keyword) de variabelen mee die je wilt variëren.
Resource          resource.robot
Test Template    test_template

*** Test Cases ***               USER NAME        PASSWORD

*** Keywords ***
    test_template
    [Arguments]    ${argument1}    ${argument2}
    