*** Settings ***
Library         Collections

*** Variables ***
&{DICTIONARY}   KEY1=Value1   KEY2=Value2    KEY3=Value3
${VAR1}=    ${DICTIONARY}[KEY1]    #Geeft waarde "Value1"

*** Test Cases ***
Checks for Dictionary
    Get Length    ${DICTIONARY}
    Get Count     ${DICTIONARY}    KEY1
    ${VALUE}     Get From Dictionary    ${DICTIONARY}    KEY3

    ${KEYS}=     Get Dictionary Keys    ${DICTIONARY}
    ${VALUES}=   Get Dictionary Values  ${DICTIONARY}
    ${ITEMS}=    Get Dictionary Items   ${DICTIONARY}
    Log Dictionary    ${DICTIONARY}