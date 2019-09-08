*** Settings ***
Library         Collections
Library         OperatingSystem

*** Variables ***
@{list}=    Items    Materials    Objects    Stuff

${Expected}=    ${CURDIR}${/}Expected.csv
${Actual}=      ${CURDIR}${/}Actual.csv
       
*** Keywords ***
Compare Expected and Actual
    [Arguments]    ${Expected}    ${Actual}
    ${fileExpected}=    Get File    ${Expected}
    ${fileActual}=      Get File    ${Actual}
    Should be Equal    ${fileExpected}    ${fileActual}

*** Test Cases ***
Store a list as a file and compare expectation
       FOR    ${entry}    IN    @{list}
              Append To File    ${Actual}    ${entry}\n
       END
       Compare Expected and Actual    ${Expected}    ${Actual}