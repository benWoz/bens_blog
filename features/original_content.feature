Feature: post original content
As a blogger
I want to post my own content
So that I can publish independently

Scenario: Rails Default Page
When I open my rails site
Then I should see "Welcome aboard"

@incomplete
Scenario: Simple Post
When I post "Welcome to my world!"
Then my post "Welcome to my world!" is published
And I should see a confirmation "was successfully created"