*** Variables ***
#Capabilities
${server}          http://localhost:4723/wd/hub
${platform}        Android
${appPackage}      com.gooogle.android.kuvera.app
${appAcivity}      com.gooogle.android.kuvera.app.MainActivity
${emulator}        emulator-5554
#Login flow
${last_slide}                    //*[contains(@text, 'Go to slide 5')]
${email}                        //*[contains(@resource-id, 'email')]
${password}                     //*[contains(@resource-id, 'password')]
${login_button}                 //*[contains(@resource-id, 'login-btn')]
#pin Page
${setup_later}                   //*[contains(@text, 'Setup Later')]
#Home Page
${invest_option}                //*[contains(@text, 'Invest')]
${Swapnil_profile}              //*[contains(@text, 'Swapnil')]
#Invest Page 
${mutual_fund}                //*[contains(@text, 'MF')]
#Profile to Logout
${Logout}                    //*[contains(@text, 'Logout')]


