Feature: Search GroupBuy for a product
  As a user
  So that I can see a narrower view of the products available for bidding in GroupBuy
  I want to be able to search the GroupBuy product listings

  Background: GroupBuy has several products and users
    Given these Products:
      | name        |       description         | price  | target | pledges |          start      |          end        | user      |
      | Wolf Cola   | Bubbly and delicious      |   0.25 |   24   |    4    | 2015-03-30 09:00:00 | 2015-05-01 12:00:00 | Markos    |
      | Xbox One    | Second-rate game console  | 300.00 |  100   |   69    | 2015-04-16 10:00:00 | 2015-06-15 17:00:00 | Garcia    |
      | Water Bed   | More motion in the ocean  | 500.00 |  100   |   34    | 2015-03-21 08:00:00 | 2015-04-04 08:30:00 | DAN       |
      | Wolf Pelts  | soft and furry            |  54.99 |   50   |   48    | 2015-02-14 14:30:54 | 2015-07-04 23:59:59 | poacher   |
      | Chubbies    | The most radical shorts   |  42.50 |   25   |   20    | 2015-03-25 09:26:31 | 2015-06-21 23:59:59 | Chubsters |

    Given these Users:
      | id | username   | email                     | password          |       created_at    |      
      |  1 | Markos     | mgeorges@colgate.edu      | greekfreak        | 2015-01-01 00:00:01 | 
      |  2 | Garcia     | wgarcia@colgate.edu       | chiefcia          | 2015-01-01 00:30:42 |
      |  3 | Will       | rely@colgate.edu          | presidentwill     | 2015-01-15 04:14:15 |
      |  4 | DAN        | ddrucker@colgate.edu      | GOHAWKS           | 2015-01-23 15:52:32 |
      |  5 | poacher    | hunter.dude@aol.com       | I<3Hunting        | 2015-01-26 13:00:24 |
      |  6 | John       | john.smith@gmail.com      | bigdaddyjohn      | 2015-01-26 22:34:41 |
      |  7 | Chubsters  | chubsternation@gmail.com  | shortsRevolution  | 2015-02-04 10:00:00 |

  Scenario: Search products for wolf
    Given I am on the index page
    When I fill in "search" with "wolf"
    And I press "search"
    Then I should be on the product search page
    And I should see "Wolf Cola"
    And I should see "Wolf Pelts"
    But I should not see "Xbox One"

  Scenario: Search Products for shorts
    Given I am on the index page
    When I fill in "search" with "shorts"
    And I press "search"
    Then I should be on the product search page
    And I should see "Chubbies"
    But I should not see "Water Bed"
