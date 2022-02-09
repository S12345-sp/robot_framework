*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
        Open Browser    url=https://www.medibuddy.in/       browser=edge     executable_path=${EXECDIR}/driver/msedgedriver
        Maximize Browser Window
        Set Selenium Implicit Wait    30s
        Click Element    link=For Employer
        Switch Window    MediBuddy LaunchPad
        Click Element    Sign up
        Input Text    id=name    parveen
        Input Text    name=email    parveen12@gmail.com
        Input Text    id=companyName    LT
        Input Text    id=mobileNumber    9877777
        Click Element    xpath=/html/body/div[1]/div/div/div[3]/div[3]/form/div/div[2]/input[2]