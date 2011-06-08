require 'capybara'
require 'capybara/dsl'

#iphone sdk from http://developer.apple.com/devcenter/ios/index.action
#iphonedriver source from http://code.google.com/p/webdriver/source/checkout
#Set your build configuration to Simulator / iPhone OS 3.2 / iWebDriver then build and go

Capybara.register_driver :iphone do |app|

  Capybara::Driver::Selenium.new(app,
                                 :browser => :iphone,
                                #need your ios devices ip address
                                 :url => 'http://10.112.198.25:3001/hub')
end

Capybara.run_server = false
Capybara.current_driver = :iphone
Capybara.default_driver = :css

World Capybara