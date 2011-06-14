require 'capybara'
require 'capybara/dsl'

Capybara.current_driver = :selenium
Capybara.run_server = false
Capybara.default_selector = :css

World Capybara

