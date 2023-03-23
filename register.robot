*** Settings ***
Library                                       SeleniumLibrary
Test Setup                                    Open Browser                            ${urladdress}    ${browsertype}
Test Teardown                                 Close Browser
*** Variables ***
${urladdress}                                 http://automationpractice.pl/index.php
${browsertype}                                Chrome
${email}                                      agungcoba@gmail.com
${firstname}                                  agung
${lastname}                                   wicak
${pass}                                       12345

*** Test Cases ***
User Can Click Sign In Button
    Wait Until Element Is Visible            //a[@class="login"]    
    Click Element                            //a[@class="login"]
I testing register with valid email
    Maximize Browser Window
    Click Element                            //a[@class="login"]
    Input Text                               //input[@id="email_create"]               ${email}
    Click Element                            //button[@id="SubmitCreate"]
User can click gender radio button
    Maximize Browser Window
    Click Element                            //a[@class="login"]
    Input Text                               //input[@id="email_create"]               ${email}
    Click Element                            //button[@id="SubmitCreate"]
    Wait Until Element Is Visible            //*[@id="uniform-id_gender1"]                     
    Click Element                            //*[@id="uniform-id_gender1"]
# User can input first name field in personal information
    Wait Until Element Is Visible            //input[@id="customer_firstname"]
    Input Text                               //input[@id="customer_firstname"]         ${firstname}
# User can input last name field in personal information
    Wait Until Element Is Visible            //input[@id="customer_lastname"] 
    Input Text                               //input[@id="customer_lastname"]          ${lastname}    
# User can input password field  
    Wait Until Element Is Visible            //input[@id="passwd"]         
    Input Text                               //input[@id="passwd"]                     ${pass}
# user can input DOB
    Select From List By Index                //select[@id="days"]                      20
    Select From List By Index                //select[@id="months"]                    6
    Select From List By Index                //select[@id="years"]                     5
    Sleep                                                                              3
# user can click newsletter checkbox
    Click Element                            //input[@id="newsletter"]  

# user can click offers checkbox
    Click Element                            //input[@id="newsletter"]

# user can click register button
    Click Element                           //button[@id="submitAccount"]  

I testing register with blank email
    Maximize Browser Window
    Click Element                           //a[@class="login"]
    Click Element                           //button[@id="SubmitCreate"]
    Element Should Not Be Visible           //div[@id="create_account_error"]             Invalid email address.
    Sleep                                   2

