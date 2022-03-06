*** Settings ***
Library         Collections
Library         OperatingSystem

*** Variables ***
@{objects_lst}=    Items    Materials    Objects    Stuff

*** Test Cases ***
Store a list as a file
    FOR  ${item}  IN  @{objects_lst}
        Append To File    ${CURDIR}${/}Result.csv    ${item}\n
    END