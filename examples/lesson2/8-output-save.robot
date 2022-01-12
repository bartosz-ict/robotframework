*** Settings ***
Library         Collections
Library         OperatingSystem

*** Variables ***
@{objects_lst}=    Items    Materials    Objects    Stuff

*** Test Cases ***
Store a list as a file
       Append To File    ${CURDIR}${/}Result    ${object_lst}[0]\n
       Append To File    ${CURDIR}${/}Result    ${object_lst}[1]\n
       Append To File    ${CURDIR}${/}Result    ${object_lst}[2]\n
       Append To File    ${CURDIR}${/}Result    ${object_lst}[3]\n
       

    