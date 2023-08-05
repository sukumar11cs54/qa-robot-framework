*** Settings ***
Documentation    This robot file contains locators and keywords of Login page related
Library         SeleniumLibrary
Resource        ../common/Generic.robot

*** Variables ***
${user_name}        css:.oxd-input[name='username']
${password}         xpath://input[@name='password' and @type='password']
${login_button}     css:.orangehrm-login-action button
${dashboard}        css:.oxd-topbar-header-breadcrumb h6
${error_message}    css:.oxd-alert-content-text



*** Keywords ***


enter the valid credentails of the users
    Wait Until Element Is Visible    ${user_name}
    Input Text    ${user_name}      ${user}
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}   ${pwd}
    Wait Until Element Is Visible    ${login_button}
    Click Button    ${login_button}


verify the user successfully login into the application
    Wait Until Element Is Visible    ${dashboard}   10s
    Page Should Contain    Dashboard
