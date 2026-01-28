*** Settings ***
Resource    ../resources/login_keywords.resource
Suite Setup    Open Browser    browser=chrome
Suite Teardown    Close All Browsers


*** Test Cases ***
Valid Login
    [Documentation]    Test a valid login scenario.
    I navigate to the login page    
    I Input correct credentials    
    I Click on the Login Button
    I Am Able to View Home Page
    

Unsuccessful Login - Empty Fields
    [Documentation]    Test an unsuccessful login scenario with empty fields.
    I navigate to the login page    
    I Input No Credentials
    I Click on the Login Button
    I See No Credentials Error Message

Unsuccessful Login - No username 
    [Documentation]    Test an unsuccessful login scenario with no username.
    I navigate to the login page    
    I Input Only Password 
    I Click on the Login Button
    I See No Username Error Message


Unsuccessful Login - No password
    [Documentation]    Test an unsuccessful login scenario with no password.
    I navigate to the login page    
    I Input Only Username
    I Click on the Login Button
    I See No Password Error Message


Unsuccessful Login - Wrong credentials
    [Documentation]    Test an unsuccessful login scenario with wrong credentials.
    I navigate to the login page    
    I Input Incorrect Credentials  
    I Click on the Login Button
    I See Invalid Credentials Error Message
