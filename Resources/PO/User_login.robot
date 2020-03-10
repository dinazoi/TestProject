*** Settings ***
Library  Selenium2Library

*** Variables ***
${Login}        flashol
${Password}     Passpro1
${Email}        flashol@mail.com

*** Keywords ***
I enter to the HP and try to login
    click element                       xpath=.//*[@routerlink='/login']
    wait until element is visible       xpath=.//*[@class='text-xs-center']
    log to console                      INFO: Verifying login page reached
    input text                          xpath=.//*[@placeholder='Email']        ${Email}
    input text                          xpath=.//*[@placeholder='Password']     ${Password}
    click element                       xpath=.//*[@type='submit']
    wait until element is visible       css=a[href='/profile/${login}']
    log to console                      INFO: User successfully logged in

