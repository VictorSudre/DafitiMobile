***Settings***
Library     AppiumLibrary

**Variables**
#Massa 
${ProdutoDesejado}              camiseta lacoste
${Tamanho}                      9
#funcionalidades script
${NacionalidadeBR}              br.com.dafiti:id/image_flag_br
${CampoBusca}                   //android.widget.TextView[contains(@text,"O que você procura?")]
${InputBusca}                   class=android.widget.EditText
${OpçãoBusca}                   //android.widget.TextView[contains(@text,"${ProdutoDesejado}")]
${Produto}                      //android.widget.TextView[contains(@text,"${ProdutoDesejado} Logo ")]
${OpçãoTamanho}                 //android.widget.TextView[contains(@text,"${Tamanho}")]
${BotãoComprar}                 //android.widget.Button[contains(@text,"COMPRAR")]

***Test Cases***
Abrir Aplicação
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=br.com.dafiti    appActivity=br.com.dafiti.activity.SplashSelectCountry_  automationName=UIautomator2
    Sleep               10
    Click Element       ${NacionalidadeBR}
    Sleep               6
    Click Element       ${CampoBusca}
    Sleep               4
    Input Text          ${InputBusca}           ${ProdutoDesejado}
    Sleep               3
    Click Element       ${OpçãoBusca}
    Sleep               3
    Click Element       ${Produto}
    Sleep               7
    Click Element       ${OpçãoTamanho}
    Sleep               3
    Click Element       ${BotãoComprar}