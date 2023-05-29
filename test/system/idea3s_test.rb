require "application_system_test_case"

class Idea3sTest < ApplicationSystemTestCase
  setup do
    @idea3 = idea3s(:one)
  end

  test "visiting the index" do
    visit idea3s_url
    assert_selector "h1", text: "Idea3s"
  end

  test "should create idea3" do
    visit idea3s_url
    click_on "New idea3"

    fill_in "Description", with: @idea3.description
    fill_in "Name", with: @idea3.name
    fill_in "Picture", with: @idea3.picture
    fill_in "Price", with: @idea3.price
    click_on "Create Idea3"

    assert_text "Idea3 was successfully created"
    click_on "Back"
  end

  test "should update Idea3" do
    visit idea3_url(@idea3)
    click_on "Edit this idea3", match: :first

    fill_in "Description", with: @idea3.description
    fill_in "Name", with: @idea3.name
    fill_in "Picture", with: @idea3.picture
    fill_in "Price", with: @idea3.price
    click_on "Update Idea3"

    assert_text "Idea3 was successfully updated"
    click_on "Back"
  end

  test "should destroy Idea3" do
    visit idea3_url(@idea3)
    click_on "Destroy this idea3", match: :first

    assert_text "Idea3 was successfully destroyed"
  end
end
