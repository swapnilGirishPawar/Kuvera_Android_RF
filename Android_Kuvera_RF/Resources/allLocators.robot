*** Variables ***

#Capabilities
${server}          http://localhost:4723/wd/hub
${platform}        Android
${appPackage}      com.gooogle.android.kuvera.app
${appAcivity}      com.gooogle.android.kuvera.app.MainActivity
${emulator}        emulator-5554


#Login flow
${email}                        id:email
${password}                     id:password


${login_button}                id:login-btn
