def path_to(page_name)
  case page_name

  when /the home\s?page/
    '/'

  # Add more mappings here.
  else
    begin
      page_name =~ /the (.*) page/
      path_components = $1.split(/\s+/)
      self.send(path_components.push('path').join('_').to_sym)
    rescue Object => e
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

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
  path_to '/'
end