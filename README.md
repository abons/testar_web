# Automatisch testen van Yoobi
Master = https://staging.yoobi.nl:8080\
Localhost = mobiel web\
testar gui = "npm run testar"\
start testing = "npm run testarGen"\
view results in vscode = "npm run showErrors"\
zie ook package.json in testar_web\bin\settings\webdriver_generic

# testar_web getting started
download chromedriver matching your chrome browser version
http://chromedriver.chromium.org/downloads
> unpack to c:/\
> or change the path in the UI-tab "General Settings"\
> or change SUTConnectorValue\
in bin/settings/webdriver_generic/test.settings

# Usage
from UI > run bin/testar.bat
> or use npm script\
in bin/settings/webdriver_generic/package.json

# Change website
in the UI-tab "General Settings"
> or change SUTConnectorValue\
in bin/settings/webdriver_generic/test.settings
>
AND change domainsAllowed\
in bin/settings/webdriver_generic/Protocol_webdriver_generic.java

# advice
add this folder to editor (vsCode)
> bin/settings
