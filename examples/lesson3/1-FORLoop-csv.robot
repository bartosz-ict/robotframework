*** Settings ***
Library         Collections

*** Variables ***
@{csv}        ${row-1}    ${row-2}    ${row-3}
@{row-1}      R1-Pos1    R1-Pos2    R1-Pos3    R1-Pos3    R1-Pos4
@{row-2}      R2-Pos1    R2-Pos2    R2-Pos3    R2-Pos3    R2-Pos4
@{row-3}      R3-Pos1    R3-Pos2    R3-Pos3    R3-Pos3    R3-Pos4

*** Keywords ***
Read csv   [Arguments]    ${body}
    FOR    ${row}    IN    @{body}
        Log    Row: ${row}
        FOR    ${entry}    IN    @{row}
            Log    Column: ${entry}
        END
    END

*** Test Cases ***
Read CSV file
       Read csv    ${csv}