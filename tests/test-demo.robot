*** Settings ***
Documentation    This test case is design to verify the login functionality of the application
...              Keywords and page objects are seprate in Login_page file
Library         SeleniumLibrary
Resource        ../Common/Generic.robot
Resource        ../locators/Login_Page.robot
Test Setup    open the browser with HRM application
Test Teardown    Close Browser

*** Test Cases ***
Validate the login functionality of HRM application
    enter the valid credentails of the users
    verify the user successfully login into the application
