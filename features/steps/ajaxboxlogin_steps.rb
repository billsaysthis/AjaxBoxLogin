require 'aruba/api'

def element_visible(elem)
  page.should has_selector?(elem)
  page.should find(elem).visible?
end

Then /^"([^"]*)" should be visible$/ do |elem|
  element_visible(elem)
end

Then /^"([^"]*)" should not be visible$/ do |elem|
  !element_visible(elem)
end

When /^I click "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^the file "([^"]*)" should contain:$/ do |file, content|
  check_file_content(file, content, true)
end

When /^I am on the homepage$/ do
  '/'
end