*** Settings ***
Library                               SeleniumLibrary
Test Setup                            Open Browser                            ${urladdress}    ${browsertype}
Test Teardown                         Close Browser
*** Variables ***
${urladdress}                         http://automationpractice.pl/index.php
${browsertype}                        Chrome
${email}                              agung@gmail.com
${firstname}                          agung
${lastname}                           wicak
${pass}                               12345
${item}                               blouse

*** Test Cases ***
User Can Click Sign In / Login
    Wait Until Element Is Visible     //a[@class="login"]    
    Click Element                     //a[@class="login"]
User success login with valid email and valid password
    Maximize Browser Window
    Click Element                     //a[@class="login"]
    Input Text                        //input[@id="email"]                      ${email}
    Input Text                        //input[@id="passwd"]                     ${pass}
    Click Element                     //button[@id="SubmitLogin"]
    Element Should Be Visible         //h1[text()="My account"]                 My account
    Sleep                            2
# User can input in search field
    Input Text                       //input[@id="search_query_top"]     ${item}

# User can click search icon
    Click Element                    //button[@name="submit_search"] 

# User can select the item
    Click Element                    //div[@class="product-container"]
    Sleep                            2

# User can add item to cart
    Click Element                    //button[@name="Submit"]
    Sleep                            2
    
# User can click proceed to checkout button in cart page 
    Wait Until Element Is Visible    //a[@class="btn btn-default button button-medium"]
    Click Element                    //a[@class="btn btn-default button button-medium"]

# User can click proceed to checkout button in summary page
    Click Element                   //a[@class="button btn btn-default standard-checkout button-medium"]

# User can click proceed to checkout button in address page
    Wait Until Element Is Visible   //button[@name="processAddress"]
    Click Element                   //button[@name="processAddress"]  

# User can click agreement checkbox
    Click Element                   //input[@type="checkbox"]

# User can click proceed to checkout button in shipping page
    Click Element                   //button[@class="button btn btn-default standard-checkout button-medium"]

# User can choose type of payment
    Click Element                   //a[@class="bankwire"]

# User can click confirm button
    Click Element                   //button[@class="button btn btn-default button-medium"]