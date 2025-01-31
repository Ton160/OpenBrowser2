Feature: User login to automation web
  @smoking
  Scenario: user can not login with valid data
    Given user navigate to automation web
    When user click on Signup or Login button
    And user Enter email address "Tonimagdy398@gmail.com"
    And user Enter password "11111111111"
    And user click on login button
    Then web will show error message
  @smoking
    Scenario Outline:  Invalid login
      Given user navigate to automation web
      When user click on Signup or Login button
      And user Enter email address "<user>"
      And user Enter password "<password>"
      And user click on login button
      Then web will show error message

      Examples:
      | user                 | password|
      | tonimagdy@gmail.com | 12345|
      | tonimagdy123@gmail.com| 222222|
      | tonimagdy12@gmail.com| 12222|
      |                      |            |




