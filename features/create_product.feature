Feature: Create new product
  As a user
  so that I can sell my product
  I want to be able to add new product listings to GroupBuy

  Background: GroupBuy has several products and users
    Given these Products:
      | name        |       description         | price  | target | pledges |          start      |          end        | user_id |
      | Wolf Cola   | Bubbly and delicious      |   0.25 |   24   |    4    | 2015-03-30 09:00:00 | 2015-05-01 12:00:00 |    1    |
      | Xbox One    | Second-rate game console  | 300.00 |  100   |   69    | 2015-04-16 10:00:00 | 2015-06-15 17:00:00 |    2    |
      | Water Bed   | More motion in the ocean  | 500.00 |  100   |   34    | 2015-03-21 08:00:00 | 2015-04-04 08:30:00 |    4    |

    Given these Users:
      | id | email                     | first_name | last_name |    password       |   
      |  1 | mgeorges@colgate.edu      | Markos     | Georges   | greekfreak        |
      |  2 | wgarcia@colgate.edu       | William    | Garcia    | chiefcia          |
      |  3 | rely@colgate.edu          | Willets    | Ely       | presidentwill     |
      |  4 | ddrucker@colgate.edu      | Daniel     | Drucker   | GOHAWKSS          |
  Scenario: Create a new product
    Given I am on the create new product page
    And my "user_id" is "1"
    When I fill in the following:
      | product_name        | Kitten Mittens                |
      | product_description | Keeps your noisey cats quiet  |
      | product_price       | 4.98                          |
      | product_target      | 30                            |
    
    When I select the following options:
      | product_end_1i      | 2015                          |
      | product_end_2i      | May                           |
      | product_end_3i      | 21                            |
      | product_end_4i      | 17                            |
      | product_end_5i      | 00                            |

    And I press "Post"
    Then I should be on the products page
    And I should see "New product Kitten Mittens created successfully"
    And I should see that "Kitten Mittens" has a price of "$4.98"
