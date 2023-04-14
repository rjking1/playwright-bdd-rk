Feature: rule

  Background:
    Given Set world param "foo" = "bar"

  Rule: Rule 1 

    Background:
      Given Set world param "xxx" = "1"

    Scenario: Scenario 1
      When Action 2
      Then World param "foo" to equal "bar"
      And World param "xxx" to equal "1"

    Scenario: Scenario 2
      Then World param "foo" to equal "bar"
      Then World param "xxx" to equal "1"

  Rule: Rule 2

    Background:
      Given Set world param "yyy" = "1"

    Scenario: Scenario 3
      Then World param "foo" to equal "bar"
      Then World param "yyy" to equal "1" 
      Then World param "xxx" to equal "undefined" 
