*** Settings ***
Resource     ../Resources/allLocators.robot
Library    AppiumLibrary


*** Keywords ***
Open Kuvera Application
    Open Application  ${server}  platformName=${platform}  deviceName=${emulator}  appPackage=${appPackage}  appActivity=${appAcivity}  automationName=Uiautomator2

close Kuvera Application
    Close All Applications

swipe on screen
    Swipe    1000    1000    50    1000

tap on screen
    Tap    ${None}    530    2050    count=1
navigate to Login screen
    Wait Until Page Contains    Skip    timeout=60
    Sleep    2
    tap on screen
    Sleep    2

Enter User details
    Input Text        ${email}       pswapnil032@gmail.com
    Input Password    ${password}    Swapnil@12321
    Click Element    ${login_button}
    