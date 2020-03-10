*** Settings ***
Resource  ../Resources/PO/User_login.robot
Resource  ../Resources/PO/Article.robot



*** Keywords ***
As a new user i want to login
    User_login.I enter to the HP and try to login

As a new user i want to create article
    Article.Article creation

As a new user i want to verify created article
    Article.Verifying article created
