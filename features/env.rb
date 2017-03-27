require 'capybara/cucumber'
require "selenium-webdriver"

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 20
Capybara.javascript_driver = :webkit
Capybara.register_driver :chrome do |app|
  # optional
  client = Selenium::WebDriver::Remote::Http::Default.new
  # optional
  client.timeout = 120
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :http_client => client)
end
Capybara.javascript_driver = :chrome