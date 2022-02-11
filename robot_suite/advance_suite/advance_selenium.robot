*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
TC1
    Open Browser       browser=edge         executable_path=${EXECDIR}/driver/msedgedriver
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://www.google.com
     ${linkcount}    Get Element Count    tag=a
     Log To Console    ${linkcount}
     
     @{elements}  Get WebElements    tag=a

     ${text}   Get Text    ${elements}[0]
     Log To Console    ${text}

     #FOR    ${i}    IN RANGE    0    ${linkcount}    1
        #${text}  Get Text    ${elemets}[${i}]
         #Log To Console    ${text}
         
         #Run Keyword If    '${text}'=='Images'    Click Element    ${elements}[${i}]

     #END
