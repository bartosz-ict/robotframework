*** Keywords ***
Set gear    [Arguments]    ${gear}
    [Documentation]    Function that triggers actions based on a gear being set.
    ${resultCamera}=    Set status backup camera    ${gear}
    Log    ${resultCamera}
    
Set status backup camera    [Arguments]    ${gear}
    [Documentation]    Returns status of camera based on reverse gear input or not.   
    IF  '${gear}'=='Reverse'    
        ${status}=    Set Variable    Camera is On
    ELSE
        ${status}=    Set Variable    Camera is Off
    END
    [Return]    ${status}

*** Test Cases ***
Test Case 1 - Turn on camera when reversing    
    Set gear    Reverse

Test Case 2 - Turn off camera not reversing
    Set gear    Gear 1