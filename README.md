# Capybara different browser example

## To get it running
Install ruby and bundler http://gembundler.com/

    bundle install

Then see

### Firefox
To run the test on Firefox

    rake firefox

### Chrome
* You need chrome driver installed and on your path get it from http://code.google.com/p/selenium/wiki/ChromeDriver

        rake chrome

### Firefox with a Mobile user agent
Runs the tests using Firefox with a mobile user agent set in the profile

    rake mobile_user_agent

### Remote IE

* You will need java
* You need selenium-server at least version 2 running on the target machine http://code.google.com/p/selenium/downloads/detail?name=selenium-server-2.0rc2.zip
* start server with `java -jar selenium-server-standalone-2.0rc2.jar`

        rake remote_ie

### Android

* You need AndroidDriver installed on the target device http://code.google.com/p/selenium/wiki/AndroidDriver
* You need the android sdk, platform tools etc installed http://developer.android.com/sdk/index.html
* You need a tunnel set up <sdk install dir>/platform-tools/adb forward tcp:8080 tcp:8080

        rake remote_android

### IPhone

* You need the iphone sdk from http://developer.apple.com/devcenter/ios/index.action
* You need iphonedriver source from http://code.google.com/p/webdriver/source/checkout
* If the IPhone sdk Set your build configuration to Simulator / iPhone OS 4.3 / iWebDriver then build and go

        rake remote_iphone

## Copyright

Copyright (c) 2011 Cromulent-Testing.

![Creative Commons Attribution-NonCommercial-ShareAlike 3.0](http://i.creativecommons.org/l/by-nc-sa/3.0/80x15.png "Creative Commons Attribution-NonCommercial-ShareAlike 3.0")
This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-nc-sa/3.0/ "Creative Commons Attribution-NonCommercial-ShareAlike 3.0")
