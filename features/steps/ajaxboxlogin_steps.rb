Then /^"([^"]*)" should be hidden$/ do |elem|
	page.should has_selector?(elem)
	page.should_not find(elem).visible?
end

When /^I click "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^"([^"]*)" should be visible$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^the file "([^"]*)" should contain:$/ do |file, content|
  check_file_content(file, content, true)
end
