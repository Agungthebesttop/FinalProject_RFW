*** Settings ***
Library                                    SeleniumLibrary
Test Setup                                 Open Browser    ${urladdress}    ${browsertype}
Test Teardown                              Close Browser

*** Variables ***
${urladdress}                              http://automationpractice.pl/index.php
${browsertype}                             Chrome

*** Test Cases ***
Verify Homepage Homeslider Appears   
    Maximize Browser Window
    Click Element                          //div[@id="homepage-slider"]
    # Validasi Data
    Element Should Be Visible              //a[text()="Get started"]              Get started
    Sleep                                  3
Verify Cart Button Appears
    Maximize Browser Window
    Click Element                          //a[@title="View my shopping cart"]   
    # Validasi Data
    Element Should Be Visible              //h1[@id="cart_title"]                  Shopping-cart summary	
    Sleep                                  3

Verify Logo Header Appears
    Maximize Browser Window
    Click Element                         //img[contains(@class,"logo img-responsive")]  
    # Validasi Data
    Element Should Be Visible             //a[@title="My Store"]                  My Store
    Sleep                                 3
Verify Footer Appears
    Maximize Browser Window
    Mouse Over                            //footer[@id="footer"]
    # Validasi Data
    Element Should Be Visible             //h4[text()="Store Information"]        Store Information
    Sleep                                 3


    