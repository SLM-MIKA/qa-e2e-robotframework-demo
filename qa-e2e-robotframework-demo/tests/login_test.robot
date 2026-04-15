*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Ouvrir Google
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    Sleep    10s
    Close Browser