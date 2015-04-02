Feature: Access the Home Page
  As a visitor to GroupBuy
  so that I can view the GroupBuy index

  Background: GroupBuy has several product listings
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

  Scenario: Get to the Sign Up Page
    Given I am on the login page
    When I press "Sign Up"
    Then I should be on the sign up Page

  Scenario: Sign Up to GroupBuy
    Given I am on the sign up page
    When I fill in the following:
      | Username         | John                 |
      | Email            | john.smith@gmail.com |
      | First Name       | John                 |
      | Last Name        | Smith                |
      | Password         | bigdaddyjohn         |
      | Confirm Password | bigdaddyjohn         |
    And I press "Create My Account"
    Then I should be on the index page
    And I should see "Welcome, John"
    And I should see "Wolf Cola"
    And I should see "Xbox One"

  Scenario: Log in to GroupBuy
    Given I am on the login page
    When I fill in the following:
      | Username | Markos     |
      | Password | greekfreak |
    And I press "Sign Up"
    Then I should be on the index page
    And I should see "Welcome, Markos"
    And I should see "Wolf Cola"
