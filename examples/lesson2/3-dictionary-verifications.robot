*** Settings ***
Library         Collections

*** Variables ***
&{dictionary}   KEY1=Value1   KEY2=Value2    KEY3=Value3
${copyDict}=    ${dictionary}

*** Test Cases ***
Verification dictionary
    Dictionary should contain key        ${dictionary}    KEY1
    Dictionary should not contain key    ${dictionary}    KEY5
    
    Dictionary should contain value      ${dictionary}    Value2
    Dictionary should not contain value  ${dictionary}    KEY2
    
    Dictionaries should be equal         ${copyDict}    ${dictionary}
    Log Dictionary                       ${copyDict}