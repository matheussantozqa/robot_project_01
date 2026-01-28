*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

I navigate to the login page
    [Arguments]    ${URL}
    Go To    ${URL}

I Input correct credentials
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${USERNAME}
    Input Text    id=password    ${PASSWORD}

I Input Incorrect Credentials
    [Arguments]    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${INVALID_USERNAME}
    Input Text    id=password    ${INVALID_PASSWORD}
    
I Click on the Login Button    
    Click Button    id=login-button    

I Am Able to View Home Page
    ${location}    Get Location
    Should Be Equal   ${location}    https://www.saucedemo.com/inventory.html

I See Error Message Expected
    [Arguments]    ${ERROR_MESSAGE}
    Element Should Contain    css=.error-message-container    ${ERROR_MESSAGE}

I Input Only Username
    [Arguments]    ${USERNAME}
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${USERNAME}

I Input Only Password
    [Arguments]    ${PASSWORD}
    Wait Until Element Is Visible    id=password
    Input Text    id=password    ${PASSWORD}

I Input No Credentials
    Wait Until Element Is Visible    id=user-name