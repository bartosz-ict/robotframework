*** Settings ***
Documentation    Een klein voorbeeld testje om te laten zien waar een IDE uit bestaat.

Library    Collections
Library    SeleniumLibrary

Force Tags    Overview    IDE    Tags    Example

*** Variables ***
${variable}      Waarde
&{dictionary}    Sleutel1=DictionaryWaarde1    Sleutel2=DictionaryWaarde2
@{list}          Positie 1    Positie 2    Positie 3    Positie 4

*** Keywords ***
Laat waarden in een lijst zien    [Arguments]    ${LIST}
    [Documentation]    Deze functie laat alle waarden in een lijst zien.

    Log List    ${LIST}
    
Laat een waarde in variabele zien    [Arguments]    ${VAR}
    [Documentation]    Deze functie laat een waarde in een variabele zien.
    
    Log    De variabele '${VAR}' staat in deze variabele.
    
*** Test Case ***
Test 1: Display variabele
   Laat een waarde in variabele zien    ${variable}

Test 2: Display lijst
   Laat waarden in een lijst zien    ${list} 