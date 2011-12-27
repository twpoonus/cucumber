
#require 'rspec'
##require 'watir-webdriver'
#require "selenium-webdriver"

=begin
SITE = "www.google.com"
BROWSER = Watir::Browser.start(SITE, :firefox)
PAGES = {
    "One Home" => "http://www.google.com/"
}
=end

Given /^A webpage$/ do

=begin
    # BROWSER.goto(PAGES[page])
    BROWSER.goto("http://www.google.com/")
=end

    #driver = Selenium::WebDriver.for :firefox
    $driver.navigate.to "http://google.com"

    element = $driver.find_element(:name, 'q')
    element.send_keys "Hello WebDriver!"
    element.submit

    puts $driver.title

    $driver.quit

end

Then /^I search for "([^"]*)"$/ do |arg1|


end