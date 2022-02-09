*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
TC1 Valid Login
    Open Browser  url=https://www.medibuddy.in/  browser=chrome  executable_path=${EXECDIR}\\drivers\\chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait  30s
    Click Element  link=For Employer
    Switch Window  MediBuddy LaunchPad
    Click Element  link=Sign up
    Input Text    id=name    Anusha
    Input Text    id=email    AnushaP@gmail.com
    Input Text    id=companyName    L&T
    Input Text    id=mobileNumber    9148603309
    Input Text    id=pincode    577527
    Input Text    id=address    Mysore
    Input Text    id=websiteUrl    www.ltts.com
    Input Text    id=empCount    23
    Click Element  xpath=//*[@id="root"]/div/div/div[3]/div[3]/form/div/div[2]/input[2]
