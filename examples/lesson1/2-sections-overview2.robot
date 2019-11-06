*** Settings ***
Documentation   Overview of Settings

Resource        ../env/prod-1.resource

Library         Collections
Library         SeleniumLibrary

Force Tags      Overview    Global    Cars

Suite Setup     Start your Engines    ${var_turnKeyRight}
Suite Teardown  Stop your Engines    ${var_turnKeyLeft}

*** Variables ***
${var_turnKeyRight}     Start
${var_turnKeyLeft}      Stop
&{dct_route}    Origin=Veenendaal   Destination=Den Haag
@{lst_gears}    Reverse    Gear 1    Gear 2    
...             Gear 3     Gear 4    Gear 5

${here}=    ${dct_route}[Origin]    #Returns value "Veenendaal"
${gearshift}=    ${lst_gears}[1]    #Returns value "Gear 1"

*** Keywords ***
Start your Engines    [Arguments]    ${motion}
    [Documentation]    With this function, your engine is started.
    log    ${motion}

Stop your Engines    [Arguments]    ${motion}
    [Documentation]    With this function, your engine is stopped.
    log    ${motion}

Drive your car from <${here}> to <${there}>
    [Documentation]    This function relocates your car.
    log    Origin: ${here}
    log    Destination: ${there}

*** Test Cases ***
Test Case 1: Drive from Home to Work
    [Documentation]    Verify the route to work from home. 
    [Tags]             Home-Work    Regression    Low
    Drive your car from <Home> to <Work>

Test Case 2: Drive from Work to Home 
    [Documentation]    Verify the route to work from home.
    [Tags]             Work-Home    Non-functional    High
    Drive your car from <Work> to <Home>