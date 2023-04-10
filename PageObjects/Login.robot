*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/WebElements.robot
Resource    ../common/CommonFunctionality.robot

*** Variables ***
#Valid Credentials
${username}  Admin
${password}  OqKh8@fZY2

*** Keywords ***
Go to Log In Form
    ${Login}  Get Text  ${login}
    Log  ${Login}
    Should Be Equal  ${Login}  Login

Enter Username
    [Arguments]     ${username}
    Click Element  ${input_username}
    Log  Clik on Username inbox
    ${username_attr}    Get Element Attribute    ${input_username}  placeholder
    Should be equal  ${username_attr}  Username
    Input Text  ${input_username}   ${username}
    Log  Enter username successfully
    Sleep  3s
Enter Password
    [Arguments]  ${password}
    Click Element   ${input_pw}
    Log  Click on Password inbox
    ${pw_attr}  Get Element Attribute  ${input_pw}  placeholder
    Should be equal  ${pw_attr}  Password
    Input Text  ${input_pw}  ${password}
    Log  Enter password successfully
    Sleep  3s
Click Login Button
    ${Loginbutton}  Get Text  ${loginbutton}
    Log  ${Loginbutton}
    Should be equal  ${Loginbutton}  Login
    Log  Verify login button
    Click Element  ${buttonlink}
    Log  Can click log in successfully
    Sleep  3s
