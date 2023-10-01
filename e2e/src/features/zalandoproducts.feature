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
        And I press Enter on "id header" element
        And I am directed to the "catalogo" page
        Then the "filter words" should be displayed
        And the "filter words" should contain the text "Zapatos"
        And the "catalog filters" should be displayed
        
        And the "1st" "catalog filter" should be displayed
        And the "1st" "catalog filter" should contain the text "Ordenar"

        And the "2nd" "catalog filter" should be displayed
        And the "2nd" "catalog filter" should contain the text "Talla"

        And the "3rd" "catalog filter" should be displayed
        And the "3rd" "catalog filter" should contain the text "Marca"

        And the "4th" "catalog filter" should be displayed
        And the "4th" "catalog filter" should contain the text "Color"

        And the "5th" "catalog filter" should be displayed
        And the "5th" "catalog filter" should contain the text "Sostenibilidad"

        And the "6th" "catalog filter" should be displayed
        And the "6th" "catalog filter" should contain the text "Precio"

        And the "7th" "catalog filter" should be displayed
        And the "7th" "catalog filter" should contain the text "Material exterior"

        And the "8th" "catalog filter" should be displayed
        And the "8th" "catalog filter" should contain the text "Colección"

        And the "9th" "catalog filter" should be displayed
        And the "9th" "catalog filter" should contain the text "Forma tacón"

        And the "10th" "catalog filter" should be displayed
        And the "10th" "catalog filter" should contain the text "Puntera"

        And the "11th" "catalog filter" should be displayed
        And the "11th" "catalog filter" should contain the text "Cierre"

        And the "12th" "catalog filter" should be displayed
        And the "12th" "catalog filter" should contain the text "Mostrar más filtros"



        #And I wait "10" seconds


