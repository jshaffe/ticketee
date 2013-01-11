Given /^there is a project called "([^\"]*)"$/ do |name|
  FactoryGirl.create(:project, :name => name)
end

Then /^(?:|I )should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).select(:path, :query).compact.join('?')
  the_test = FactoryGirl.create(:project, :name => page_name)
  puts current_path
  current_path.should == '/projects/1'
end

Then /^(?:|I )should not see "([^\"]*)"$/ do |text|
    page.should have_no_content(text)
end