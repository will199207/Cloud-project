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
      | id | username   | email                     | first_name | last_name |    password       |   
      |  1 | Markos     | mgeorges@colgate.edu      | Markos     | Georges   | greekfreak        |
      |  2 | Garcia     | wgarcia@colgate.edu       | William    | Garcia    | chiefcia          |
      |  3 | Will       | rely@colgate.edu          | Willets    | Ely       | presidentwill     |
      |  4 | DAN        | ddrucker@colgate.edu      | Daniel     | Drucker   | GOHAWKS           |

  Scenario: Create a new product
    Given I am on the create new product page
    And my "user_id" is "1"
    When I fill in the following:
      | Name        | Kitten Mittens                |
      | Description | Keeps your noisey cats quiet  |
      | Price       | 4.98                          |
      | Target      | 30                            |
      | End         | 2015-05-21 17:00:00           |
    And I press "Post"
    Then I should be on the products page
    And I should see "Kitten Mittens has been added by Markos and is now waiting on pledges"
    And I should see that "Kitten Mittens" has a price of "$4.98"
    And I should see that "Kitten Mittens" has a target of "30"
    And I should see that "Kitten Mittens" expires on "2015-05-21 17:00:00"
