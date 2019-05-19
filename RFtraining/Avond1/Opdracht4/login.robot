*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

Login With Invalid Credentials Should Fail
    Open Browser To Login Page
    Input Username    invalid
    Input Password    password
    Submit Credentials
    Login Should Have Failed
    [Teardown]    Close Browser

