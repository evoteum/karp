Feature: Presentation lifecycle

  As a presenter
  I want to create and manage Presentation resources
  So that my presentation renders correctly and is accessible to my audience

  Scenario: Creating a Presentation resource renders slides
    When a Presentation resource is created in the cluster
    Then the presentation should reach a Ready condition

  Scenario: Deleting a Presentation resource cleans up rendered output
    Given a Presentation resource exists in the cluster
    When the Presentation resource is deleted
    Then all associated resources should be removed from the cluster

  Scenario: Updating the Presentation resource triggers re-render
    Given a Presentation resource exists in the cluster
    When the Presentation resource is updated
    Then the presentation should reflect the updated content
