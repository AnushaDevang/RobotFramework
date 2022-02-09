*** Settings ***
Library  DateTime

*** Test Cases ***
TC1 Print Name
    Log To Console    hello,everyone
    Log To Console    Anusha
    
TC2 Print Date
    ${date}  Get Current Date
    Log To Console    ${date}

TC3 Store Data
    Set Local Variable    ${name}   Anu
    Log To Console    ${name}
    Log    hello,${name}

    ${title}   Set Variable  robotframeworksession
    Log To Console    ${title}

TC4 Add Number
    Set Local Variable    ${num1}  2
    Set Local Variable    ${num2}  5
    ${res}   Evaluate    ${num1}+${num2}
    Log To Console    ${res}

TC5 area of circle
    Set Local Variable    ${radius}   3
    ${res}  Evaluate     3.14*${radius}*${radius}
    Log To Console    ${res}

TC6
    Set Local Variable    ${browser}   chrome
    IF   '${browser}'=='chrome'
           Log To Console    Yes!it's chrome
    ELSE
           Log To Console    No it's not chrome
    END

TC7 For loop

 FOR  ${i} IN RANGE 1  11  1
    Log To Console    ${i}
END




