*** Settings ***
Library         Collections

*** Variables ***
&{DICTIONARY}   KEY1=Value1   KEY2=Value2    KEY3=Value3
${COPYDICT}=    ${DICTIONARY}

*** Test Cases ***
Verification dictionary
    Dictionary should contain key        ${DICTIONARY}    KEY1
    Dictionary should not contain key    ${DICTIONARY}    KEY5
    
    Dictionary should contain value      ${DICTIONARY}    Value2
    Dictionary should not contain value  ${DICTIONARY}    KEY2
    
    Dictionaries should be equal         ${COPYDICT}    ${DICTIONARY}
    Log Dictionary                       ${COPYDICT}