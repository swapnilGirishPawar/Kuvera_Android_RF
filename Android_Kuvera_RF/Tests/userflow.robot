*** Settings ***
Resource            ../Resources/keywords.robot
Suite Setup         Open Kuvera Application
Suite Teardown      close Kuvera Application

*** Test Cases ***
Login
    navigate to Login screen
    Sleep    2
    Enter User details
    Sleep    3