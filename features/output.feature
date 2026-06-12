Feature: Rendered output
  As a presenter
  I want the rendered presentation output to be accessible
  So that my audience can view the presentation

  Scenario: HTML output is produced for a valid presentation
    When a Presentation resource is created in the cluster
    Then the rendered HTML should be available to serve

  Scenario: Output is accessible via when a Gateway is configured
    Given a Presentation resource exists in the cluster
    And a Gateway is configured
    Then the presentation should be reachable via its hostname