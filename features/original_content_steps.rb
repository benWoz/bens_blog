require 'page-object'
require 'watir'

World PageObject::PageFactory

When /^I open the home page$/ do
  visit HomePage
end

Then /^I should see "(.*?)"$/ do |message|
  on_page(HomePage).text.should == message
end

When /^I post "(.*?)"$/ do |message_contents|
  visit CreateContentPage
end

Then /^my post "(.*?)" is published$/ do |message_contents|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a confirmation "(.*?)"$/ do |confirmation|
  pending # express the regexp above with the code you wish you had
end

class HomePage
  include PageObject

  page_url "http://localhost:3000"
end

class CreateContentPage
  include PageObject

  page_url "http://localhost:3000"
#  text_field(:content, :id => 'content')
#  button(:publish, :id => 'submit')
end