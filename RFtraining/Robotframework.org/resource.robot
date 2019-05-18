*** Variables ***
${BASE URL}    http://robotframework.org/
${BROWSER}      chrome

*** Settings ***
Library     SeleniumLibrary
Library    Dialogs    

*** Keywords ***
Open browser to robotframework.org
    Open Browser   ${BASE URL}    browser=${BROWSER}
    Maximize Browser Window

Navigate to robotframework.org
    Go To    ${BASE URL}

Click RoboCon menu item
    Click Link    RoboCon    
    
Click Robocon link
    # Click Link    http://robocon.io
    Click Link    //a[contains(text(),'RoboCon')]
    
Robocon page should be opened
    Page Should Contain Image    Robot Frameworkg logo
    
Click Shop menu item    
    Click Link    Shop

Click Shop link
    Click Link    To shop
    Select Window    Robot Framework - All profits will be used for flourishing Robot Framework    
    
Open ${item} merchandize
    Wait Until Element Is Enabled    //*[@title='${item}']    
    Click Element    //*[@title='${item}']  
    Wait Until Page Contains    Robot Framework T-shirt men    15s
        
Add ${size}-size to the cart
    Click Element    //label[contains(text(),'${size}')]
    Click Button    Add to cart
    
Cart should contain ${item}
    Wait Until Page Contains    Your cart
    # Pause Execution
    Sleep    5
    Page Should Contain Element    //a[contains(text(),'${item}')]         
    Page Should Contain    ${item}    
    