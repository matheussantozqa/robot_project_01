*** Settings ***
Library    SeleniumLibrary
Variables    ../variables/variables.py


*** Keywords ***

I navigate to the login page
    Go To    ${URL_DATA}[baseUrl]

I Input correct credentials
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA}[correctData][username]
    Input Text    id=password     ${LOGIN_DATA}[correctData][password]


I Input Incorrect Credentials
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA}[incorrectData][username]
    Input Text    id=password    ${LOGIN_DATA}[incorrectData][password]
    
I Click on the Login Button    
    Click Button    id=login-button    

I Am Able to View Home Page
    ${location}    Get Location
    ${full_url}=    Catenate    SEPARATOR=    ${URL_DATA}[baseUrl]    /inventory.html
    Should Be Equal    ${location}    ${full_url}

I See No Credentials Error Message
    Element Should Contain    css=.error-message-container    ${ERROR_MESSAGES}[noCredentials]

I See No Username Error Message
    Element Should Contain    css=.error-message-container    ${ERROR_MESSAGES}[missingUsername]

I See No Password Error Message
    Element Should Contain    css=.error-message-container    ${ERROR_MESSAGES}[missingPassword]

I See Invalid Credentials Error Message
    Element Should Contain    css=.error-message-container    ${ERROR_MESSAGES}[invalidCredentials]

I Input Only Username   
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA}[correctData][username]

I Input Only Password
    Wait Until Element Is Visible    id=password
    Input Text    id=password    ${LOGIN_DATA}[correctData][password]

I Input No Credentials
    Wait Until Element Is Visible    id=user-name