*** Settings ***
Library         Collections

*** Variables ***
@{LIST}         Position 1    Position 2
...             Position 3    Position 4

*** Test Cases ***
For Loop Notation Range
    ${max}=    Get Length    ${LIST}
    FOR    ${entry}    IN RANGE    0    ${max}
           log    ${entry}
    END
