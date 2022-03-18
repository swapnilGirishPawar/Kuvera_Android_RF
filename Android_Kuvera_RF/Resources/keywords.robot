*** Settings ***
Resource     ../Resources/allLocators.robot
Library    AppiumLibrary


*** Keywords ***
Open Kuvera Application
    Open Application  ${server}  platformName=${platform}  deviceName=${emulator}  appPackage=${appPackage}  appActivity=${appAcivity}  automationName=Uiautomator2

open browserstack
    Open Application  ${remote_URL}  app=${appURL}  name=${sessionName}  build=RobotFramework  platformName=Android  os_version=10.0  device=OnePlus 8  browserstack.uploadMedia=${media} 

close Kuvera Application
    Close All Applications

swipe on screen
    Swipe    1000    1000    50    1000

tap on screen
    Tap    ${None}    530    2055    count=1
navigate to Login screen
    Sleep    30
    tap on screen
    Wait Until Page Contains Element    ${email}    timeout=10
    Sleep    2

Enter User details
    Input Text        ${email}       pswapnil032@gmail.com
    Input Password    ${password}    Swapnil@12321
    Click Element    ${login_button}

Setup later
    Sleep    3 
    Click Element    ${setup_later}


Home Page asserions
    Page Should Contain Element    ${invest_option}
    Page Should Contain Element    ${Swapnil_profile}

Navigate to mutual fund section
    Click Element    ${invest_option}
    Click Element    ${mutual_fund}
    sleep    2

logout from profile section
    Click Element    ${Swapnil_profile}
    Click Element    ${Logout}

Logout Assertions
    Page Should Contain Element    ${email}
    Page Should Contain Element    ${password}

Mutual fund page asserions
    Page Should Contain Element    ${Swapnil_profile}

    