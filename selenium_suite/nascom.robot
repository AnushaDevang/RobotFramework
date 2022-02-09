*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Test Cases ***
TC1 Valid Login
    Open Browser  url=https://nasscom.in/about-us/career  browser=chrome  executable_path=${EXECDIR}\\drivers\\chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait  30s
    Click Element    xpath=//*[@id="member-form"]/div/div/a
    Input Text     id=edit-field-fname-reg   admin
    Input Text     id=edit-field-lname    pass
    Input Text     id=edit-mail     admin@gmail.com
    Input Text     id=edit-field-company-name-registration   Google
    Select From List By Label   id=edit-field-business-focus-reg   IT Consulting
    Click Element  name=op
    Sleep    5s
    Close browser

