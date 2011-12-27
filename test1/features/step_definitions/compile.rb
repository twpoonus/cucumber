Given /Build is OK/ do
    $driver.navigate.to "http://google.com"

end

Given /enter "(.+)" into the search text field$/ do |search_term|

    $element = $driver.find_element(:name, 'q')
    $element.send_keys search_term

end

Given /^submit/ do

    $element.submit

end