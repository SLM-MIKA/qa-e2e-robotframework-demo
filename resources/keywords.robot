*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Login With Valid Credentials
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button  css=button[type="submit"]

Verify Login Success
    Page Should Contain    You logged into a secure area!
    Sleep    1s

    Close Browser