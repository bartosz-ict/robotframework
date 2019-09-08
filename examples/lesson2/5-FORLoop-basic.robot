*** Settings ***
Library         Collections

*** Variables ***
@{LIST}         Position 1    Position 2
...             Position 3    Position 4

&{DICTIONARY}   KEY1=Value1   KEY2=Value2    KEY3=Value3

*** Test Cases ***
For Loop Notation List
       FOR    ${entry}    IN     @{LIST}
              log    ${entry}
       END
       
For Loop Notation Dictionary
       FOR    ${entry}    IN    @{DICTIONARY}
              log    ${entry}
       END