require "application_system_test_case"

class GoalsTest < ApplicationSystemTestCase
  setup do
    @goal = goals(:one)
  end

  test "visiting the index" do
    visit goals_url
    assert_selector "h1", text: "Goals"
  end

  test "creating a Goal" do
    visit goals_url
    click_on "New Goal"

    check "Completed" if @goal.completed
    fill_in "Counter", with: @goal.counter
    fill_in "Description", with: @goal.description
    fill_in "Target", with: @goal.target
    fill_in "Title", with: @goal.title
    fill_in "User", with: @goal.user_id
    click_on "Create Goal"

    assert_text "Goal was successfully created"
    click_on "Back"
  end

  test "updating a Goal" do
    visit goals_url
    click_on "Edit", match: :first

    check "Completed" if @goal.completed
    fill_in "Counter", with: @goal.counter
    fill_in "Description", with: @goal.description
    fill_in "Target", with: @goal.target
    fill_in "Title", with: @goal.title
    fill_in "User", with: @goal.user_id
    click_on "Update Goal"

    assert_text "Goal was successfully updated"
    click_on "Back"
  end

  test "destroying a Goal" do
    visit goals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Goal was successfully destroyed"
  end
end
