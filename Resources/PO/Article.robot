*** Settings ***
Library  Selenium2Library

*** Variables ***


*** Keywords ***
Article creation
    click element                       css=a[href='/editor']
    wait until element is visible       xpath=.//*[@placeholder='Article Title']
    log to console                      INFO: Article creation form reached
    input text                          xpath=.//*[@placeholder='Article Title']                Something
    input text                          xpath=.//*[@formcontrolname='description']              Article about something
    input text                          xpath=.//*[@formcontrolname='body']                     Article about something
    input text                          xpath=.//*[@placeholder='Enter tags']                   SometestTags
    log to console                      INFO: All data added to article creation form
    click element                       xpath=.//*[@type='button']

Verifying article created
    ${get_article}=                get text            xpath=.//*[@class='container']/h1
    run keyword if                '${get_article}' == 'Something'           log to console          INFO: Article correct
    ...     ELSE                   log to console                           INFO: Wrong article
    go to                          @{START_URL}
    log to console                 INFO: Home Page reached
    click element                  xpath=.//*[text()=' Global Feed ']
    wait until page contains       ${get_article}
    log to console                 INFO: Article are posted on the global feed



