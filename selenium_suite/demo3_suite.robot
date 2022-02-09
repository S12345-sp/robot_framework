*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
    Open Browser   url=https://demo.openemr.io/b/openemr/index.php    browser=Edge   executable_path=${EXECDIR}/driver/msedgedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice        English (Indian)
    Click Element    xpath=//*[@id="login_form"]/div[1]/div[1]/div[4]/button
    
