*** Setting ***
Documentation    An overview of the two types of (mutable) collections in Robot.
Library    Collections

*** Variables ***
#List contains index values as indicator which position in list item contains.
@{cities}=    Arnhem    Den Haag    Veenendaal    Utrecht    Amsterdam    Rotterdam

#Dictionary contains a 'key' and a ‘value' which is retrieved upon request.
&{woonplaats}=        Pim=Arnhem    Jan=Den Haag    Mariet=Veenendaal    Lenie=Amsterdam

*** Test Cases ***
Test with List
    log list    ${cities}       #Display of List collection (Object)
    Log         ${cities}[3]    #Display single list item
    
Test with Dictionary
    Log Dictionary    ${woonplaats}         #Display Dict Collection (Object)
    Log               ${woonplaats}[Jan]  #Display single Dict item
