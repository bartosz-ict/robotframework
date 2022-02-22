*** Settings ***
Library         Collections
Library         OperatingSystem

*** Variables ***
@{objects_lst}=    Items    Materials    Objects    Stuff

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
       Append To File    ${CURDIR}${/}Actual.csv    ${objects_lst}[0]\n
       Append To File    ${CURDIR}${/}Actual.csv    ${objects_lst}[1]\n
       Append To File    ${CURDIR}${/}Actual.csv    ${objects_lst}[2]\n
       Append To File    ${CURDIR}${/}Actual.csv    ${objects_lst}[3]\n
       Compare Expected and Actual    ${Expected}    ${Actual}