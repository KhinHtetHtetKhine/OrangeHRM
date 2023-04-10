*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  Firefox
${orangeHRM}    https://khinhtet-trials77.orangehrmlive.com/auth/seamlessLogin

*** Keywords ***
Start Test Case
    Open Browser    ${orangeHRM}    ${browser}
    Log  Open Browsser Successfully
    Maximize Browser Window
    Log  Maximize Browser Successfully
    Title Should Be  OrangeHRM
    Log  Correct title shows (OrangeHRM)
Finish Test Case
    Close Browser
