Feature: As a user I can interact with cards

    @smoke
    @regression
    @dev
    Scenario: As a user I can see the main page
        Given I am on the "home" page
        And the "logo" should be displayed
        And I click the "Get Started" button
        Then I am directed to the "explore" page
        And the "category title" should be displayed
        And the "category title" should contain the text "Featured"

        #And the "card main" should contain the text "Automation"
        #And the "card type" should contain the text "noun"
        #And the "card overview" should contain the text "Automate the execution of tests"
        #And the "card overview" should contain the text ""compares actual with expected""
        #And the "card action" should contain the text "Learn More"
        
