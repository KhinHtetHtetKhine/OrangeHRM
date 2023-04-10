*** Settings ***
Library   SeleniumLibrary
Resource    ../commom/CommonFunctionality.robot
Resource    ../PageObjects/Login.robot

Suite Setup
Suite Teardown

Test Setup  Start Test Case
Test Teardown  Finish Test Case

*** Variables ***
${alert}  xpath://*[@id="toast-container"]/div/div

*** Test Cases ***
Verify login is successful with valid credentials
    [documentation]  Login
    [tags]  Positive Test Case
    Login.Go To Log In Form
    Login.Enter Username  ${username}
    Login.Enter Password  ${password}
    Login.Click Login Button

Verify proper error message shows for invalid username
    [documentation]  Login
    [tags]  Negative Test Case
    Login.Go To Log In Form
    Login.Enter Username  KHHK
    Login.Enter Password  ${password}
    Login.Click Login Button
    Wait Until Element Is Visible  ${alert}  5s
    ${getalert}  Get Text  ${alert}
    Should be equal  ${getalert}  Invalid Credentials
    Sleep  3s

Verify proper error message shows for invalid password
    [documentation]  Login
    [tags]  Negative Test Case
    Login.Go To Log In Form
    Login.Enter Username  ${username}
    Login.Enter Password  123456
    Login.Click Login Button
    Wait Until Element Is Visible  ${alert}  5s
    ${getalert}  Get Text  ${alert}
    Should be equal  ${getalert}  Invalid Credentials
    Sleep  3s