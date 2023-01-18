***Settings***
Library     AppiumLibrary


***Test Cases***
Abrir Aplicação
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=br.com.dafiti    appActivity=br.com.dafiti.activity.SplashSelectCountry_  automationName=UIautomator2
    Sleep               10
    Click Element       br.com.dafiti:id/image_flag_br
    Sleep               6
    Click Element       //android.widget.TextView[contains(@text,"O que você procura?")]
    Sleep               4
    Input Text          class=android.widget.EditText           camiseta lacoste
    Sleep               3
    Click Element       //android.widget.TextView[contains(@text,"camiseta lacoste")]
    Sleep               3
    Click Element       //android.widget.TextView[contains(@text,"Camiseta Lacoste Logo ")]
    Sleep               7
    Click Element       //android.widget.TextView[contains(@text,"9")]
    Sleep               3
    Click Element       //android.widget.Button[contains(@text,"COMPRAR")]
                   
