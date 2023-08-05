*** Settings ***
Documentation    This test case is design to verify the login functionality of the application
...              Keywords and page objects are seprate in Login_page file
Library         SeleniumLibrary
Library         DataDriver      file=resources/loginData.csv    encoding=utf_8
Resource        ../Common/Generic.robot
Resource        ../locators/Login_Page.robot
Test Setup    open the browser with HRM application
Test Template   Validate the login functinality with invalid credentials


*** Variables ***

*** Test Cases ***
Validate the login functionality of HRM application
    enter the valid credentails of the users
    verify the user successfully login into the application
#below lines will only execute with default user name and password when datadriver failed to fetch data
*** Test Cases ***
enter the username ${UN} and password ${PSWD}       abc       11233123


*** Keywords ***
Validate the login functinality with invalid credentials
    [Arguments]    ${UN}    ${PSWD}
    open the browser with HRM application
    enter the username and password     ${UN}       ${PSWD}
    verify the error message is display


enter the username and password
    [Arguments]     ${UN}       ${PSWD}
    Wait Until Element Is Visible    ${user_name}
    Input Text    ${user_name}      ${UN}
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}   ${PSWD}
    Wait Until Element Is Visible    ${login_button}
    Click Button    ${login_button}


verify the error message is display
    Wait Until Element Is Visible       ${error_message}
    ${actual_error_message}=    Get Text    ${error_message}
    Should Be Equal As Strings    ${actual_error_message}       Invalid credentials
