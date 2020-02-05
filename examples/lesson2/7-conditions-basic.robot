*** Settings ***
Library         Collections

*** Test Cases ***
Conditional with implicitness
       ${list}=    Create list    True    False
       FOR  ${entry}    IN    @{list}
              Run Keyword If    ${entry}    Log    Deze waarde is True => ${entry}
       END
       
Conditionals in Robot Test
       FOR    ${entry}    IN RANGE    0    10
              Run Keyword If    ${entry} > 5    log    Nr. ${entry} is larger than 5
              Run Keyword If    ${entry} == 3   log    Nr. ${entry} is equal 3
              Run Keyword If    ${entry} != 2   Log    Nr. ${entry} is ongelijk aan 2
       END

Conditional with a list
       ${list}=    Create list    string    1234    ${EMPTY}    value4       
       FOR  ${entry}    IN    @{list}
              Continue for loop if   '4' in '${entry}'
              Log    Deze waarde bevat niet een 4: ${entry}
       END