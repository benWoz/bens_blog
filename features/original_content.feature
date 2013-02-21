Feature: post original content
As a blogger
I want to post my own content
So that I can publish independently

Scenario: Home Page
When I open the home page
Then I should see "Welcome aboard"

Scenario: Simple Post
When I post "Welcome to my world!"
Then my post "Welcome to my world!" is published
And I should see a confirmation "was successfully created"