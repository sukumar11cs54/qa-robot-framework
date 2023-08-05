*** Settings ***
Documentation    This generic file will contain common keywords and applictaion details
Library     SeleniumLibrary

*** Variables ***
${url}              https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${user}             Admin
${pwd}              admin123

*** Keywords ***
open the browser with HRM application
    Create Webdriver        Chrome      executable_path=D:/chromedriver_win32/chromedriver
    Maximize Browser Window
    Go To   ${url}
