# encode: UTF-8

@devices
Feature:
  As a user
  I want to add my device
  To grant access

  Background:
    Given I access the devices page

  @smoke
  Scenario: Add a valid device
    When I add a new devices
    Then should display a confirmation message

  @regression
  Scenario: Cancel the add action
    When I fill device serial number
    And I cancel
    Then should back to bashboard

  @regression
  Scenario: Add a invalid device
    When I try to add a devices with invalid serial number
    Then should display a error message

  @security @regression @no_implemented
  Scenario Outline: Application should not accept invalid arguments
    When I try to input a "<arguments>"
    Then should display a error message
    Examples: Arguments
      |arguments|
      |<script>alert('Do not show')</script>|
      |SELECT * FROM device WHERE serial_number = 105 OR 1=1;|
