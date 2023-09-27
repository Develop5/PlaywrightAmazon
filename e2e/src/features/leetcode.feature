Feature: As a user I can interact with cards

    @smoke
    @regression
    Scenario: As a user I can see the main page
        Given I am on the "leetcode_home" page
        And the "logo" should be displayed
        And I click the "Get Started" button
        Then I am directed to the "leetcode_explore" page
        And the "1st" "category title" should be displayed
        And the "1st" "category title" should contain the text "Featured"

        And the "2nd" "category title" should be displayed
        And the "2nd" "category title" should contain the text "Interview"

        And the "3rd" "category title" should be displayed
        And the "3rd" "category title" should contain the text "Learn"

        And the "1st" "chapter" should be displayed
        And the "1st" "chapter" should contain the text "4"



        
    @smoke
    @regression
    Scenario: As a user I can see the main page
        Given I am on the "home" page