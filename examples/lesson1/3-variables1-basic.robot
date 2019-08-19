*** Settings ***
Documentation   Overview of how to use Scalar variables

*** Variables ***
${VAR1}=        Standaard
${VAR2}=        Notatie
${COMBI}=       ${VAR1} ${VAR2}

${STANDAARD-NOTATIE}=    Samenvoeging van variabelen

*** Test Cases ***
Test Case 1  
    Log    ${COMBI}            # Standaard Notatie
    Log    ${${VAR1}-${VAR2}}
