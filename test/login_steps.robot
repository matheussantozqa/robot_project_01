*** Settings ***

Library    SeleniumLibrary
Resource    ../resources/login_keywords.resource
Test Setup    Open Browser    browser=chrome



*** Variables ***
${URL}    https://www.saucedemo.com
${BROWSER}    chrome
${VALID_USERNAME}    standard_user
${VALID_PASSWORD}    secret_sauce
${INVALID_USERNAME}    wrong_user
${INVALID_PASSWORD}    wrong_password

*** Test Cases ***
Valid Login
    [Documentation]    Test a valid login scenario.
    I navigate to the login page    ${URL}
    I Input correct credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
    I Click on the Login Button
    I Am Able to View Home Page
    Close Browser
    

Unsuccessful Login - Empty Fields
    [Documentation]    Test an unsuccessful login scenario with empty fields.
    I navigate to the login page    ${URL}
    I Input No Credentials
    I Click on the Login Button
    I See Error Message Expected    Epic sadface: Username is required
    Close Browser

Unsuccessful Login - No username 
    [Documentation]    Test an unsuccessful login scenario with no username.
    I navigate to the login page    ${URL}
    I Input Only Password    ${VALID_PASSWORD}
    I Click on the Login Button
    I See Error Message Expected    Epic sadface: Username is required
    Close Browser

Unsuccessful Login - No password
    [Documentation]    Test an unsuccessful login scenario with no password.
    I navigate to the login page    ${URL}
    I Input Only Username    ${VALID_USERNAME}
    I Click on the Login Button
    I See Error Message Expected     Epic sadface: Password is required
    Close Browser

Unsuccessful Login - Wrong credentials
    [Documentation]    Test an unsuccessful login scenario with wrong credentials.
    I navigate to the login page    ${URL}
    I Input Incorrect Credentials    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
    I Click on the Login Button
    I See Error Message Expected    Epic sadface: Username and password do not match any user in this service
    Close Browser