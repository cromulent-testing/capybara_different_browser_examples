require 'capybara'
require 'capybara/dsl'

#See README.md for dependencies

Capybara.register_driver :remote_ie do |app|
  Capybara::Driver::Selenium.new(app,
    :browser => :remote,
    #you will need to change this to the ip address of your windows machine
    :url => "http://192.168.214.147:4444/wd/hub",
    :desired_capabilities => :internet_explorer)
end

Capybara.run_server = false
Capybara.current_driver = :remote_ie
Capybara.default_selector = :css


World Capybara