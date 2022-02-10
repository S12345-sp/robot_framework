*** Settings ***
Library    Collections
*** Comments ***


*** Test Cases ***
TC1
   Set Local Variable    ${firstname}     parveentaj
   ${lastname}    Set Variable    shaik
   Log To Console    ${firstname} ${lastname}

   @{fruits}   Create List   apple    banana    grapes
   Log To Console    ${fruits}
   Log To Console    ${fruits}[0]


   FOR    ${color}    IN    @{fruits}
       Log To Console    ${color}

   END

   Log List  ${fruits}
   
TC2
    Log To Console    ${OTP}