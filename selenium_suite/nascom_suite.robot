*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Login Valid

    Open Browser  url=https://nasscom.in/about-us/career      browser=edge      executable_path=${EXECDIR}/driver/msedgedriver
    Maximize Browser Window
    Click Element    link=New User
    Input Text    id=edit-field-fname-reg    admin
    Input Text    id=edit-field-lname   pass
    Input Text    name=field_company_name_registration    parveen12@gmail.com
    Input Text    id=edit-field-company-name-registration    google
    Select From List By Label    name=field_business_focus_reg     IT Consulting
    Click Element    name=op
    Close Browser