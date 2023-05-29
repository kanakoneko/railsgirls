require "application_system_test_case"

class Idea5sTest < ApplicationSystemTestCase
  setup do
    @idea5 = idea5s(:one)
  end

  test "visiting the index" do
    visit idea5s_url
    assert_selector "h1", text: "Idea5s"
  end

  test "should create idea5" do
    visit idea5s_url
    click_on "New idea5"

    fill_in "Description", with: @idea5.description
    fill_in "Name", with: @idea5.name
    fill_in "Picture", with: @idea5.picture
    fill_in "Price", with: @idea5.price
    click_on "Create Idea5"

    assert_text "Idea5 was successfully created"
    click_on "Back"
  end

  test "should update Idea5" do
    visit idea5_url(@idea5)
    click_on "Edit this idea5", match: :first

    fill_in "Description", with: @idea5.description
    fill_in "Name", with: @idea5.name
    fill_in "Picture", with: @idea5.picture
    fill_in "Price", with: @idea5.price
    click_on "Update Idea5"

    assert_text "Idea5 was successfully updated"
    click_on "Back"
  end

  test "should destroy Idea5" do
    visit idea5_url(@idea5)
    click_on "Destroy this idea5", match: :first

    assert_text "Idea5 was successfully destroyed"
  end
end
