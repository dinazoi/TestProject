*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Article_creation.robot



*** Variables ***
@{START_URL}            https://angular.realworld.io/




*** Test Cases ***
Lease the car through the sign up
    [Documentation]     As a new user i want to login and create new article
    ...                 -- login as a new user
    ...                 --- Create new article
    ...                 ---- Verify new article created
    [Tags]  Smoke   Registration
    GIVEN Begin web test on local display
    AND As a new user i want to login
    AND As a new user i want to create article
    THEN As a new user i want to verify created article
    THEN End web test

