Feature: To test Knowledge Check pages and the results in the Summary page

  Scenario: To navigate to KC1 and select the correct answer

    Given I navigate to KC1 page itd_5
    When I select the correct answer for KC1
    Then I get the Correct Answer Feedback for KC1

  Scenario: To navigate to KC2 and select the correct answer

    Given I navigate to KC2 page itd_10
    When I select the correct answer for KC2
    Then I get the Correct Answer Feedback for KC2

  Scenario: To navigate to KC3 and select the correct answer

    Given I navigate to KC3 page itd_13
    When I select the correct answer for KC3
    Then I get the Correct Answer Feedback for KC3

  Scenario: To navigate to KC1 and select the first incorrect answer

    Given I navigate to KC1 page itd_5
    When I select the the first incorrect answer for KC1
    Then I get the incorrect Answer Feedback for KC1

  Scenario: To navigate to KC1 and select the second incorrect answer

    Given I navigate to KC1 page itd_5
    When I select the second incorrect answer for KC1
    Then I get the incorrect Answer Feedback for KC1

  Scenario: To navigate to KC1 and select the third incorrect answer

    Given I navigate to KC1 page itd_5
    When I select the third incorrect answer for KC1
    Then I get the incorrect Answer Feedback for KC1

  Scenario: To navigate to KC2 and select the first incorrect answer

    Given I navigate to KC2 page itd_10
    When I select the the first incorrect answer for KC2
    Then I get the incorrect Answer Feedback for KC2

  Scenario: To navigate to KC2 and select the second incorrect answer

    Given I navigate to KC2 page itd_10
    When I select the second incorrect answer for KC2
    Then I get the incorrect Answer Feedback for KC2

  Scenario: To navigate to KC2 and select the third incorrect answer

    Given I navigate to KC2 page itd_10
    When I select the third incorrect answer for KC2
    Then I get the incorrect Answer Feedback for KC2

  Scenario: To navigate to KC3 and select the first incorrect answer

    Given I navigate to KC3 page itd_13
    When I select the the first incorrect answer for KC3
    Then I get the incorrect Answer Feedback for KC3

  Scenario: To navigate to KC3 and select the second incorrect answer

    Given I navigate to KC3 page itd_13
    When I select the second incorrect answer for KC3
    Then I get the incorrect Answer Feedback for KC3

  Scenario: To navigate to KC3 and select the third incorrect answer

    Given I navigate to KC3 page itd_13
    When I select the third incorrect answer for KC3
    Then I get the incorrect Answer Feedback for KC3

  Scenario: To navigate trough all the Knoledge Checks, select the correct answers and check result on the Summary page

    Given I navigate to KC1 page itd_5
    And I select the correct answer for KC1
    Given I navigate to KC2 page itd_10
    And I select the correct answer for KC2
    Given I navigate to KC3 page itd_13
    And I select the correct answer for KC3
    Given I navigate to Summary page
    Then I get three out of three

