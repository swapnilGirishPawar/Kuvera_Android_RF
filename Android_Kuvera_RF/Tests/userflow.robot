*** Settings ***
Resource            ../Resources/keywords.robot
Suite Setup           Open Kuvera Application

*** Test Cases ***
Verify user able to Login into application
    navigate to Login screen
    Sleep    2
    Enter User details
    Sleep    2
    Setup later
    Home Page asserions


Verify user able to navigate to mutual fund Page.
    Navigate to mutual fund section
    Mutual fund page asserions

Verify user able to logout from the application.
    logout from profile section
    Logout Assertions