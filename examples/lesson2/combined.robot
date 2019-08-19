*** Setting ***
Documentation    An overview of combining collections in Robot.
Library    Collections

*** Variables ***
@{LIST}=    Value 1    Value 2    Value 3    Value 4

&{SUBDICT1}=     Key 1=Item 1    Key 2=Item 2    Key 3=Item 3    
&{SUBDICT2}=     Sub1=Subvalue1    Sub2=Subvalue2    Sub3=Subvalue3

&{COMBIDICT}=    Combi1=${SUBDICT1}    Combi2=${SUBDICT2}    DictList=${LIST}
@{COMBILIST}=    ${LIST}    ${SUBDICT1}    ${SUBDICT2}

*** Test Cases ***
Test with Dictionary containg mixed collections
    ${DICT}=    Get From Dictionary    ${COMBIDICT}    Combi2
    Log Dictionary    ${DICT}
    
    ${DICT}=    Get From Dictionary    ${COMBIDICT}    DictList
    Log List    ${DICT}

Test with List containing mixed collections
    Log List    ${COMBILIST}