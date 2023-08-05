*** Settings ***
Documentation    This generic file will contain common keywords and applictaion details
Library     SeleniumLibrary

*** Variables ***
${url}              https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${user}             Admin
${pwd}              admin123
${browser_name}      Chrome

*** Keywords ***
open the browser with HRM application
    Create Webdriver        ${browser_name}      executable_path=D:/chromedriver_win32/${browser_name}
    Maximize Browser Window
    Go To   ${url}
