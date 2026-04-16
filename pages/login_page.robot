*** Settings ***
Library    SeleniumLibrary
Library OperatingSystem

*** Keywords ***
Open Browser To Login Page
    Open Browser    https://the-internet.herokuapp.com/login    chrome
    Maximize Browser Window

Go To Login Page
    Go To    https://the-internet.herokuapp.com/login

Login With Valid Credentials
    Input Text    id=username    tomsmith
    Input Text    id=password    SuperSecretPassword!
    Click Element    css=button[type="submit"]

Login With Invalid Credentials
    Input Text    id=username    wrong
    Input Text    id=password    wrong
    Click Element    css=button[type="submit"]

Verify Success Login
    Wait Until Page Contains Element    id=flash    5s
    ${msg}=    Get Text    id=flash
    Should Contain    ${msg}    secure area

Verify Failed Login
    Wait Until Page Contains Element    id=flash    5s
    ${msg}=    Get Text    id=flash
    Should Contain    ${msg}    invalid

Close Browser Session
    Close Browser