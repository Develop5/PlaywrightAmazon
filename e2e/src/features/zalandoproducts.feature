Feature: As a user I can interact with cards

    @smoke
    @regression
    @dev
    Scenario: As a user I can see the main page
        Given I am on the "home" page
        And the "logo" should be displayed
        And the "search" should be displayed
        And I click the "search" icon
        And the "id header" should be displayed
        And I fill in the "id header" input with "Zapatos"
        And I click the "id header" icon
        And I wait "10" seconds

        #Then I am directed to the "explore" page
        #And the "1st" "category title" should be displayed
        #And the "1st" "category title" should contain the text "Featured"
#
        #And the "2nd" "category title" should be displayed
        #And the "2nd" "category title" should contain the text "Interview"
#
        #And the "3rd" "category title" should be displayed
        #And the "3rd" "category title" should contain the text "Learn"
#
        #And the "1st" "chapter" should be displayed
        #And the "1st" "chapter" should contain the text "49"


