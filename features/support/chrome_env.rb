require 'capybara'
require 'capybara/dsl'

#See README.md for dependencies

Capybara.current_driver = :selenium

Capybara.register_driver :selenium do |app|
  Capybara::Driver::Selenium.new(app, :browser => :chrome)
end

Capybara.run_server = false
Capybara.default_selector = :css


World Capybara

