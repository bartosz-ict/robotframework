*** Setting ***
Documentation    An overview of the two types of (mutable) collections in Robot.
Library    Collections

*** Variables ***
#List contains index values as indicator which position in list item contains.
@{LIST}=    Value 1    Value 2    Value 3    Value 4

#Dictionary contains a 'key' and a ‘value' which is retrieved upon request.
&{DICTIONARY}=    Key 1=Item 1    Key 2=Item 2    Key 3=Item 3

*** Test Cases ***
Test with List
    log list    ${LIST}       #Display of List collection (Object)
    Log         ${LIST}[3]    #Display single list item
    
Test with Dictionary
    Log Dictionary    ${DICTIONARY}         #Display Dict Collection (Object)
    Log               ${DICTIONARY}[Key 2]  #Display single Dict item
