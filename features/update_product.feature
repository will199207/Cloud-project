Feature: Pledge to buy a Product
  As a user,
  So that I can take advantage of the great deals that GroupBuy offers,
  I want to pledge to buy a product.

  Background: GroupBuy has several products and users
    Given these Products:
      | name        |       description         | price  | target | pledge_count |          start      |          ending        |  user_id  |
      | Wolf Cola   | Bubbly and delicious      |   0.25 |   24   |    4         | 2015-03-30 09:00:00 | 2015-05-01 12:00:00    |     1     |
      | Xbox One    | Second-rate game console  | 300.00 |  100   |   69         | 2015-04-16 10:00:00 | 2015-06-15 17:00:00    |     2     |
      | Water Bed   | More motion in the ocean  | 500.00 |  100   |   34         | 2015-03-21 08:00:00 | 2015-04-04 08:30:00    |     4     |
      | Wolf Pelts  | soft and furry            |  54.99 |   50   |   48         | 2015-02-14 14:30:54 | 2015-07-04 23:59:59    |     5     |
      | Chubbies    | The most radical shorts   |  42.50 |   25   |   20         | 2015-03-25 09:26:31 | 2015-06-21 23:59:59    |     7     |

    Given these Users:
      | id | email                     | first_name | last_name |    password       |
      |  1 | mgeorges@colgate.edu      | Markos     | Georges   | greekfreak        |
      |  2 | wgarcia@colgate.edu       | William    | Garcia    | chiefcia          |
      |  3 | rely@colgate.edu          | Willets    | Ely       | presidentwill     |
      |  4 | ddrucker@colgate.edu      | Daniel     | Drucker   | GOHAWKSS          |
      |  5 | hunter.dude@aol.com       | Ron        | Jeremy    | I<3Hunting        |
      |  6 | john.smith@gmail.com      | John       | Smith     | bigdaddyjohn      |
      |  7 | chubsternation@gmail.com  | Tom        | Selleck   | shortsRevolution  |

  Scenario: Pledge to buy a Product
    Given I am on the login page
    When I fill in the following:
      | user_email    | john.smith@gmail.com     |
      | user_password | bigdaddyjohn             |
    And I press "Log in"
    Then I should be on the home page
    And I should see "Signed in successfully."
    And I should see "Chubbies"
    When I follow "Chubbies"
    Then I should see "The most radical shorts"
    And I should see "$42.50"
    And I should see "25"
    When I fill in "pledges" with "1"
    And I press "Pledge!"
    And I should see "Pledges until target is hit: 5"
    When I press "Confirm!!!"
    Then I should see "Your pledge went through!"
