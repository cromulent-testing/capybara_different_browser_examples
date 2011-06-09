require 'capybara'
require 'capybara/dsl'

#See README.md for dependencies

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