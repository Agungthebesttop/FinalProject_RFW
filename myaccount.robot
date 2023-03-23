*** Settings ***
Library                                   SeleniumLibrary
Test Setup                                Open Browser                            ${urladdress}    ${browsertype}
Test Teardown                             Close Browser
*** Variables ***
${urladdress}                             http://automationpractice.pl/index.php
${browsertype}                            Chrome
${email}                                  agung@gmail.com
${password}                               12345
${address_1}                              Simo Gunung
${address_2}                              Citraland
${city}                                   Surabaya
${postal_code}                            60254
${homephone}                              0315623239
${mobilephone}                            085732044414
${information}                            Ini alamat saya
${addresstitle}                           SSMBP

*** Test Cases ***
User has successfully logged in
    Maximize Browser Window
    Click Element                         //a[@class="login"]
    Sleep                                 3
    Input Text                            //input[@id="email"]                    ${email}
    Input Text                            //input[@id="passwd"]                   ${password}
    Click Element                         //button[@id="SubmitLogin"]
# user able to click My Address button
    Click Element                         //span[text()="My addresses"]
# user able to click Add a new address
    Click Element                         //span[text()="Add a new address"]
# user able to input address line 1 field
    Input Text                            //*[@id="address1"]                     ${address_1}
# user able to input address line 2 field
    Wait Until Element Is Visible         //*[@id="address2"]
    Input Text                            //*[@id="address2"]                     ${address_2}
# user able to input City field
    Input Text                            //*[@id="city"]                         ${city}
    Sleep                                 3
# user able to input state field
    Click Element                         //*[@value="4"]
# user able to input postal code field 
    Input Text                            //*[@id="postcode"]                     ${postal_code}
# user able to input homephone field
    Input Text                            //*[@id="phone"]                        ${homephone}
# user able to input mobilephone field
    Input Text                            //*[@name="phone_mobile"]               ${mobilephone}
# user able to input additional information field
    Input Text                            //*[@data-validate="isMessage"]         ${information}
# user able to input input address title field
    Clear Element Text                    //*[@id="alias"]
    Input Text                            //*[@id="alias"]                        ${addresstitle}
    sleep                                 3s
# user able to click save button
    Click Element                         //*[@id="submitAddress"]