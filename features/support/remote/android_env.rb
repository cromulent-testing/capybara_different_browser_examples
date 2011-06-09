require 'capybara'
require 'capybara/dsl'

#See README.md for dependencies

Capybara.register_driver :android do |app|

  Capybara::Driver::Selenium.new(app,
                                 :browser => :android,
                                 :url => 'http://localhost:8080/hub')
end

Capybara.run_server = false
Capybara.current_driver = :android
Capybara.default_driver = :css

World Capybara