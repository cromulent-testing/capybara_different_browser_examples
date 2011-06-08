require 'capybara'
require 'capybara/dsl'

#you need chrome driver installed, http://code.google.com/p/selenium/wiki/ChromeDriver

Capybara.current_driver = :selenium

Capybara.register_driver :selenium do |app|
  Capybara::Driver::Selenium.new(app, :browser => :chrome)
end

Capybara.run_server = false
Capybara.default_driver = :css


World Capybara

