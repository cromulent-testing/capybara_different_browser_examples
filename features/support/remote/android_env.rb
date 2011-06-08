require 'capybara'
require 'capybara/dsl'

#you need AndroidDriver installed on the target device http://code.google.com/p/selenium/wiki/AndroidDriver
#you need the android sdk, platform tools etc installed http://developer.android.com/sdk/index.html
# you need a tunnel set up   <sdk dir>/platform-tools/adb forward tcp:8080 tcp:8080

Capybara.register_driver :android do |app|

  Capybara::Driver::Selenium.new(app,
                                 :browser => :android,
                                 :url => 'http://localhost:8080/hub')
end

Capybara.run_server = false
Capybara.current_driver = :android
Capybara.default_driver = :css

World Capybara