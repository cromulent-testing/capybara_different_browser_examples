require 'capybara'
require 'capybara/dsl'

Capybara.register_driver :iphone do |app|
  require 'selenium/webdriver'
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile['general.useragent.override'] = "Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1A543a Safari/419.3"

  Capybara::Driver::Selenium.new(app, :profile => profile)
end

Capybara.run_server = false
Capybara.current_driver = :iphone
Capybara.default_selector = :css

World Capybara
