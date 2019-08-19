*** Settings ***
Library         Collections

*** Variables ***
&{DICTIONARY}   KEY1=Value1   KEY2=Value2    KEY3=Value3
${VAR1}=    ${DICTIONARY}[KEY1]    #Geeft waarde "Value1"

*** Test Cases ***
Mutate dictionary
    ${createDict}=    Create Dictionary    Key4=Value4    Key5=Value5
    Set To Dictionary         ${createDict}    KeySet    ValueAdded
    Remove From Dictionary    ${CreateDict}    Key5
    Log Dictionary            ${createDict}

    Keep in Dictionary        ${CreateDict}    KEY2
    Log Dictionary            ${CreateDict}
    

Checks for Dictionary
    Get Length    ${DICTIONARY}
    Get Count     ${DICTIONARY}    KEY1
    ${VALUE}     Get From Dictionary    ${DICTIONARY}    KEY3

    ${KEYS}=     Get Dictionary Keys    ${DICTIONARY}
    ${VALUES}=   Get Dictionary Values  ${DICTIONARY}
    ${ITEMS}=    Get Dictionary Items   ${DICTIONARY}
    Log Dictionary    ${DICTIONARY}