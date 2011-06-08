require 'capybara'
require 'capybara/dsl'

#you need selenium-server at least version 2 running on the target machine http://code.google.com/p/selenium/downloads/detail?name=selenium-server-2.0rc2.zip
#you will need java
#start server with java -jar selenium-server-standalone-2.0rc2.jar

Capybara.register_driver :remote_ie do |app|
  Capybara::Driver::Selenium.new(app,
    :browser => :remote,
    #you will need to change this to the ip address of your windows machine
    :url => "http://192.168.214.147:4444/wd/hub",
    :desired_capabilities => :internet_explorer)
end

Capybara.run_server = false
Capybara.current_driver = :remote_ie
Capybara.default_driver = :css


World Capybara