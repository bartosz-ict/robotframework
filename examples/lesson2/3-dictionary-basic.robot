*** Settings ***
Library         Collections

*** Variables ***
&{dictionary}   KeyEntry1=Value1   KeyEntry2=Value2    KeyEntry3=Value3
${var1}=    ${dictionary}[KeyEntry1]    #Geeft waarde "Value1"
${var2}=    ${dictionary.KeyEntry1}    #Geeft waarde "Value1"

*** Test Cases ***
Basic actions for a Dictionary
    ${createDict}=    Create Dictionary    Key4=Value4    Key5=Value5
    Get Length    ${dictionary}
    Get Count     ${dictionary}    KeyEntry1
    ${value}=     Get From Dictionary    ${dictionary}    KeyEntry3

    ${keys}=     Get Dictionary Keys    ${dictionary}
    ${values}=   Get Dictionary Values  ${dictionary}
    ${items}=    Get Dictionary Items   ${dictionary}
    Log Dictionary    ${dictionary}