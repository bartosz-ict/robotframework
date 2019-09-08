*** Settings ***
Library         Collections
Library         OperatingSystem

*** Variables ***
@{list}=    Items    Materials    Objects    Stuff

*** Test Cases ***
Store a list as a file
       FOR    ${entry}    IN    @{list}
              Append To File    ${CURDIR}${/}Result    ${entry}\n
       END

    