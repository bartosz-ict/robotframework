*** Setting ***
Documentation    An overview of the two types of (mutable) collections in Robot.
Library    Collections

*** Variables ***
#List contains index values as indicator which position in list item contains.
@{cities_lst}=    Arnhem    Den Haag    Veenendaal    Utrecht    Amsterdam    Rotterdam

#Dictionary contains a 'key' and a ‘value' which is retrieved upon request.
&{woonplaats_dct}=        Pim=Arnhem    Jan=Den Haag    Mariet=Veenendaal    Lenie=Amsterdam

*** Test Cases ***
Test with List
    log list    ${cities_lst}       #Display of List collection (Object)
    Log         ${cities_lst}[3]    #Display single list item
    
Test with Dictionary
    Log Dictionary    ${woonplaats_dct}       #Display Dict Collection (Object)
    Log               ${woonplaats_dct}[Jan]  #Display single Dict item
