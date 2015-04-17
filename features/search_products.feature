Feature: Search products by name and/or description
  As a user,
  so that I easily find products I am interested in,
  I want to be able to search products by keyword.
  
  Background: GroupBuy has several products and users
    Given these Products:
      | name         |       description         | price  | target | pledges |          start      |          end        | user_id |
      | Wolf Cola    | Bubbly and delicious      |   0.25 |   24   |    4    | 2015-02-25 09:00:00 | 2015-12-01 12:00:00 |    1    |
      | Xbox One     | Second-rate game console  | 300.00 |  100   |   69    | 2015-03-16 10:00:00 | 2015-09-15 17:00:00 |    2    |
      | Water Bed    | More motion in the ocean  | 500.00 |  100   |   34    | 2015-03-22 08:00:00 | 2015-11-04 08:30:00 |    4    |
      | Turbocharger | Makes wolf cars fast      | 20.55  |  10    |   1     | 2015-01-21 05:00:00 | 2015-08-04 10:30:00 |    4    |
      | Galaxy SIII  | Better than an iPhone     | 99.99  |  79    |   15    | 2015-02-15 05:00:00 | 2015-08-20 10:30:00 |    3    |
      | iPhone9      | For those who think alike | 199.99 |  79    |   14    | 2015-02-16 05:00:00 | 2015-08-21 10:30:00 |    3    |
      | Xbox 360     | Outdated 2nd-rate console | 99.99  |  10    |   0     | 2015-03-21 05:00:00 | 2015-08-01 10:30:00 |    2    |
      | Water bottles| For better hydration      | 12.00  |  100   |   37    | 2015-01-01 05:00:00 | 2015-05-04 10:30:00 |    5    |
      | Bubble mix   | More fun for everyone     | 3.00   |  200   |   19    | 2015-03-21 05:00:00 | 2015-10-04 10:30:00 |    1    |
  
  
  Scenario: Search for product
    Given I have searched for "wolf"
    Then I should see "Wolf Cola"
    And I should see "Turbocharger"
    But I should not see "Xbox One"
    But I should not see "Water Bed"
    But I should not see "Galaxy SIII"
    But I should not see "iPhone9"
    But I should not see "Xbox 360"
    But I should not see "Water bottles"
    But I should not see "Bubble mix"
    
  Scenario: Search for product
    Given I have searched for "console"
    Then I should see "Xbox One"
    And I should see "Xbox 360"
    But I should not see "Wolf Cola"
    But I should not see "Turbocharger"
    But I should not see "Galaxy SIII"
    But I should not see "iPhone9"
    But I should not see "Water Bed"
    But I should not see "Water bottles"
    But I should not see "Bubble mix"
  
  Scenario: Search for product
    Given I have searched for "iphone"
    Then I should see "iPhone9"
    But I should see "Galaxy SIII"
    And I should not see "Xbox 360"
    But I should not see "Wolf Cola"
    But I should not see "Turbocharger"
    But I should not see "Water Bed"
    But I should not see "Xbox One"
    But I should not see "Water bottles"
    But I should not see "Bubble mix"
  
  Scenario: Search for product
    Given I have searched for "more"
    Then I should see "Water Bed"
    And I should see "Bubble mix"
    But I should not see "Wolf Cola"
    But I should not see "Turbocharger"
    But I should not see "Galaxy SIII"
    But I should not see "Xbox 360"
    But I should not see "Xbox One"
    But I should not see "Water bottles"
    But I should not see "iPhone9"
  
  Scenario: Search for product comes back empty
    Given I have searched for "arbitrary"
    Then I should see "No products match search"
    But I should not see "Xbox One"
    But I should not see "Xbox 360"
    But I should not see "Wolf Cola"
    But I should not see "Turbocharger"
    But I should not see "Galaxy SIII"
    But I should not see "iPhone9"
    But I should not see "Water Bed"
    But I should not see "Water bottles"
    But I should not see "Bubble mix"
    
  Scenario: Search for product and sort by price
    Given I have searched for "o"
    And I sort by "Price low to high"
    Then I should see product "price" in "sorted" order
    
  Scenario: Search for product and sort by price
    Given I have searched for "o"
    And I sort by "Price high to low"
    Then I should see product "price" in "reverse sorted" order
    
  Scenario: Search for product and sort by end date
    Given I have searched for "o"
    And I sort by "Ending Soonest"
    Then I should see product "end_date" in "sorted" order
    
  Scenario: Search for product and sort by pledges needed to hit target
    Given I have searched for "o"
    And I sort by "Close to Tilt"
    Then I should see product "target - pledges" in "sorted" order
    And I should see that "Wolf Cola" has a pledge target number of "20"

  Scenario: Search for product and sort by newly listed
    Given I have searched for "o"
    And I sort by "Newly Listed"
    Then I should see product "start_date" in "sorted" order
   
