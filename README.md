# testar_web

download chromedriver matching your chrome browser version
http://chromedriver.chromium.org/downloads
> unpack to c:/\
> or change the path in the UI-tab "General Settings"\
> or change SUTConnectorValue in bin/settings/webdriver_generic/test.settings

# Usage
from UI > run bin/testar.bat
> or use npm script\
inside bin/settings/webdriver_generic/package.json

# Change website
in the UI-tab "General Settings"
> or change SUTConnectorValue in bin/settings/webdriver_generic/test.settings
>
AND change domainsAllowed in bin/settings/webdriver_generic/Protocol_webdriver_generic.java

