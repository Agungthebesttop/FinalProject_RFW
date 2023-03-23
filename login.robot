*** Settings ***
Library                                   SeleniumLibrary
Test Setup                                Open Browser                            ${urladdress}    ${browsertype}
Test Teardown                             Close Browser
*** Variables ***
${urladdress}                             http://automationpractice.pl/index.php
${browsertype}                            Chrome
${email}                                  agung@gmail.com
${firstname}                              agung
${lastname}                               wicak
${pass}                                   12345

*** Test Cases ***
User Can Click Sign In Button
    Wait Until Element Is Visible        //a[@class="login"]    
    Click Element                        //a[@class="login"]
I testing login with valid email and valid password
    Maximize Browser Window
    Click Element                        //a[@class="login"]
    Input Text                           //input[@id="email"]                      ${email}
    Input Text                           //input[@id="passwd"]                     ${pass}
    Click Element                        //button[@id="SubmitLogin"]
    Element Should Be Visible            //h1[text()="My account"]                 My account
    Sleep                                2
I testing login with valid email and wrong password
    Maximize Browser Window
    Click Element                        //a[@class="login"]
    Input Text                           //input[@id="email"]                      ${email}
    Input Text                           //input[@id="passwd"]                     salah
    Click Element                        //button[@id="SubmitLogin"]
    Element Should Be Visible            //h1[@class="page-heading"]               Authentication
    Sleep                                2
I testing login with wrong email and valid password
    Maximize Browser Window
    Click Element                        //a[@class="login"]
    Input Text                           //input[@id="email"]                      salah@gmail.com
    Input Text                           //input[@id="passwd"]                     ${pass}
    Click Element                        //button[@id="SubmitLogin"]
    Element Should Be Visible            //h1[@class="page-heading"]               Authentication
    Sleep                                2