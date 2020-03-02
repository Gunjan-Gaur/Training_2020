require "application_system_test_case"

class ScaffoldCommandsTest < ApplicationSystemTestCase
  setup do
    @scaffold_command = scaffold_commands(:one)
  end

  test "visiting the index" do
    visit scaffold_commands_url
    assert_selector "h1", text: "Scaffold Commands"
  end

  test "creating a Scaffold command" do
    visit scaffold_commands_url
    click_on "New Scaffold Command"

    click_on "Create Scaffold command"

    assert_text "Scaffold command was successfully created"
    click_on "Back"
  end

  test "updating a Scaffold command" do
    visit scaffold_commands_url
    click_on "Edit", match: :first

    click_on "Update Scaffold command"

    assert_text "Scaffold command was successfully updated"
    click_on "Back"
  end

  test "destroying a Scaffold command" do
    visit scaffold_commands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scaffold command was successfully destroyed"
  end
end
