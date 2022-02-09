*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Test Cases ***
TC1 Valid Login
        Open Browser        url=https://opensource-demo.orangehrmlive.com/      browser=edge        executable_path=${EXECDIR}/driver/msedgedriver
        Input Text    id=txtUsername    Admin
        Input Password    id=txtPassword    admin123
        Click Element    name=Submit