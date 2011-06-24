require 'capybara'
require 'capybara/dsl'

#See README.md for dependencies

Capybara.register_driver :chrome do |app|
  Capybara::Driver::Selenium.new(app, :browser => :chrome)
end

Capybara.current_driver = :chrome
Capybara.run_server = false
Capybara.default_selector = :css

World Capybara

