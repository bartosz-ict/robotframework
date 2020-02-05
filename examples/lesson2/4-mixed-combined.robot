*** Setting ***
Documentation    An overview of combining collections in Robot.
Library    Collections

*** Variables ***
@{list}=    Value 1    Value 2    Value 3    Value 4

&{subDict1}=     Key 1=Item 1    Key 2=Item 2    Key 3=Item 3    
&{subDict2}=     Sub1=Subvalue1    Sub2=Subvalue2    Sub3=Subvalue3

&{combiDict}=    Combi1=${SUBDICT1}    Combi2=${subDict2}    DictList=${list}
@{combiList}=    ${list}    ${subDict1}    ${subDict2}

*** Test Cases ***
Test with Dictionary containing mixed collections
    ${dict}=    Get From Dictionary    ${combiDict}    Combi2
    Log Dictionary    ${DICT}
    
    ${DICT}=    Get From Dictionary    ${combiDict}    DictList
    Log List    ${dict}

Test with List containing mixed collections
    Log List    ${combiList}