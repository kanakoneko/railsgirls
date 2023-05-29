require "application_system_test_case"

class Idea4sTest < ApplicationSystemTestCase
  setup do
    @idea4 = idea4s(:one)
  end

  test "visiting the index" do
    visit idea4s_url
    assert_selector "h1", text: "Idea4s"
  end

  test "should create idea4" do
    visit idea4s_url
    click_on "New idea4"

    fill_in "Description", with: @idea4.description
    fill_in "Name", with: @idea4.name
    fill_in "Picture", with: @idea4.picture
    fill_in "Price", with: @idea4.price
    click_on "Create Idea4"

    assert_text "Idea4 was successfully created"
    click_on "Back"
  end

  test "should update Idea4" do
    visit idea4_url(@idea4)
    click_on "Edit this idea4", match: :first

    fill_in "Description", with: @idea4.description
    fill_in "Name", with: @idea4.name
    fill_in "Picture", with: @idea4.picture
    fill_in "Price", with: @idea4.price
    click_on "Update Idea4"

    assert_text "Idea4 was successfully updated"
    click_on "Back"
  end

  test "should destroy Idea4" do
    visit idea4_url(@idea4)
    click_on "Destroy this idea4", match: :first

    assert_text "Idea4 was successfully destroyed"
  end
end
