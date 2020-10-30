RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :selenium_chrome_headless
  end

  config.before(:each, type: :system, rack: true) do
    driven_by :rack_test
  end
end

Capybara.register_driver :selenium_chrome_headless do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: %w(headless no-sandbox window-size=1200,900)
  )
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end
