Feature: Make a pledge to a listing
  As a user
  So that I can cash in on the sweet deals offered by GroupBuy
  I want to be able to make a pledge to an active product listing on GroupBuy

  Background: GroupBuy has several products and users
    Given these Products:
      | name        |   description                | price  | target   | pledge_count |    start            |       ending        | user_id |
      | Wolf Cola   | Bubbly and delicious         |   0.25 |   24     |   4          | 2015-03-30 09:00:00 | 2015-05-01 12:00:00 |     1   |
      | Xbox One    | Second-rate game console     | 300.00 |  100     |  69          | 2015-04-16 10:00:00 | 2015-06-15 17:00:00 |     2   |
      | Water Bed   | More motion in the ocean     | 559.99 |   50     |  49          | 2015-04-02 08:00:00 | 2015-07-03 07:59:59 |     4   |
      | iPhone 4S   | A bit outdated but a classic |  35.50 |   40     |  32          | 2014-12-28 15:30:00 | 2015-03-30 05:20:25 |     1   |

    Given these Users:
    
