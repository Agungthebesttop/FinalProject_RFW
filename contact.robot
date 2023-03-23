*** Settings ***
Library                                   SeleniumLibrary
Test Setup                                Open Browser                            ${urladdress}    ${browsertype}
Test Teardown                             Close Browser
*** Variables ***
${urladdress}                             http://automationpractice.pl/index.php
${browsertype}                            Chrome
${email}                                  agung@gmail.com
${order}                                  1
${message}                                Kualitas Bagus
${direktori}                              D:/finalproject/download.jpg
${success_messgae}                        Your message has been successfully sent to our team.

*** Test Cases ***
Open Browser Chrome
    Maximize Browser Window

User can Click Contact Us Button
    Maximize Browser Window
    Click Element                          //div[@id="contact-link"]

# Verify Contact Us Title Appears
    Element Should Be Visible              //h1[@class="page-heading bottom-indent"]

# Verify Contact Us Subtitle Appears
    Element Should Be Visible              //h3[@class="page-subheading"]
    Sleep                                  3

# User can Click Subject Heading Dropdown
    Select From List By Index              //select[@id="id_contact"]            2

# User can input Email Field
    input Text                             //input[@id="email"]                    ${email} 

# User can inpt Order field
    input Text                             //input[@id="id_order"]                 ${order} 

# User can upload file
    Choose File                            //input[@id="fileUpload"]               ${direktori}

# User can input Message Field
    input Text                             //textarea[@id="message"]               ${message}

# User can click send button
    Click Element                          //button[@id="submitMessage"]

# Verify Success Status
    Element Should Contain                 //p[@class="alert alert-success"]       ${success_messgae}