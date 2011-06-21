require 'capybara'
require 'capybara/dsl'

#See README.md for dependencies

Capybara.register_driver :iphone do |app|

  Capybara::Driver::Selenium.new(app,
                                 :browser => :iphone,
                                 :url => 'http://localhost:3001/hub')
end

Capybara.run_server = false
Capybara.current_driver = :iphone
Capybara.default_selector = :css

World Capybara