require 'page-object'
require 'watir'

When /^I post "(.*?)"$/ do |message_contents|
  browser = Watir::Browser.new :firefox
  browser.goto "http://google.com"
  browser.text_field(:name => 'q').set("WebDriver rocks!")
  browser.button(:name => 'btnG').click
  puts browser.url
  browser.close
end

Then /^my post "(.*?)" is published$/ do |message_contents|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a confirmation "(.*?)"$/ do |confirmation|
  pending # express the regexp above with the code you wish you had
end

class CreateContentPage
  include PageObject
#  text_field(:content, :id => 'content')
#  button(:publish, :id => 'submit')
end