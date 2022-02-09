*** Settings ***
Library   SeleniumLibrary
Library   OperatingSystem

*** Test Cases ***
TC1 Valid Login
# Append To Environment Variable path ${EXECDIR}//drivers
   Open Browser  url=https://opensource-demo.orangehrmlive.com/  browser=chrome   executable_path=${EXECDIR}\\drivers\\chromedriver
   Input Text  id=txtUsername  Admin
   Input Password  id=txtPassword  admin123
   Click Element   name=Submit
   Click Element    welcome
   Sleep    5s
   ${url}  Get Location
   Log To Console    ${url}
   Click Element    link=Logout
   Close Browser

