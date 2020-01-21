*** Settings ***
Library         Collections

*** Variables ***
@{list}         Position 1    Position 2
...             Position 3    Position 4

&{dictionary}   KEY1=Value1   KEY2=Value2    KEY3=Value3

*** Test Cases ***
For Loop Notation List
       FOR    ${entry}    IN     @{list}
              log    ${entry}
       END
       
For Loop Notation Dictionary
       FOR    ${entry}    IN    @{dictionary}
              log    ${entry}
       END