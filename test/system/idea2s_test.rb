require "application_system_test_case"

class Idea2sTest < ApplicationSystemTestCase
  setup do
    @idea2 = idea2s(:one)
  end

  test "visiting the index" do
    visit idea2s_url
    assert_selector "h1", text: "Idea2s"
  end

  test "should create idea2" do
    visit idea2s_url
    click_on "New idea2"

    fill_in "Description", with: @idea2.description
    fill_in "Name", with: @idea2.name
    fill_in "Picture", with: @idea2.picture
    fill_in "Table", with: @idea2.table
    click_on "Create Idea2"

    assert_text "Idea2 was successfully created"
    click_on "Back"
  end

  test "should update Idea2" do
    visit idea2_url(@idea2)
    click_on "Edit this idea2", match: :first

    fill_in "Description", with: @idea2.description
    fill_in "Name", with: @idea2.name
    fill_in "Picture", with: @idea2.picture
    fill_in "Table", with: @idea2.table
    click_on "Update Idea2"

    assert_text "Idea2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Idea2" do
    visit idea2_url(@idea2)
    click_on "Destroy this idea2", match: :first

    assert_text "Idea2 was successfully destroyed"
  end
end
