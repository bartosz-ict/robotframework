*** Settings ***
Library           Dialogs    
Suite Setup       Open browser to robotframework.org
Suite Teardown    Close All Browsers
# Test Teardown     Navigate to robotframework.org
Resource          resource.robot   


*** Test Cases ***
Navigate to Robocon.io
    Click RoboCon menu item
    Click Robocon link
    Robocon page should be opened

Purchase a t-shirt from a Shop
    Click Shop menu item
    Click Shop link
    Open Robot Framework T-shirt men merchandize
    Add L-size to the cart
    Cart should contain Robot Framework T-shirt men
