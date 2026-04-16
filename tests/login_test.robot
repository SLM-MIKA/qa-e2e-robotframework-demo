*** Settings ***
Resource    ../pages/login_page.robot
Test Setup    Open Browser To Login Page
Test Teardown    Close Browser Session

*** Test Cases ***
Valid Login Test
    [Tags]    smoke    regression
    Login With Valid Credentials
    Verify Success Login

Invalid Login Test
    [Tags]    regression
    Login With Invalid Credentials
    Verify Failed Login