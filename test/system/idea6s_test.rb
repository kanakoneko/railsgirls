require "application_system_test_case"

class Idea6sTest < ApplicationSystemTestCase
  setup do
    @idea6 = idea6s(:one)
  end

  test "visiting the index" do
    visit idea6s_url
    assert_selector "h1", text: "Idea6s"
  end

  test "should create idea6" do
    visit idea6s_url
    click_on "New idea6"

    check "Aaa" if @idea6.aaa
    fill_in "Description", with: @idea6.description
    fill_in "Eee", with: @idea6.eee
    fill_in "Kkk", with: @idea6.kkk
    fill_in "Name", with: @idea6.name
    fill_in "Picture", with: @idea6.picture
    fill_in "Price", with: @idea6.price
    fill_in "Table", with: @idea6.table
    click_on "Create Idea6"

    assert_text "Idea6 was successfully created"
    click_on "Back"
  end

  test "should update Idea6" do
    visit idea6_url(@idea6)
    click_on "Edit this idea6", match: :first

    check "Aaa" if @idea6.aaa
    fill_in "Description", with: @idea6.description
    fill_in "Eee", with: @idea6.eee
    fill_in "Kkk", with: @idea6.kkk
    fill_in "Name", with: @idea6.name
    fill_in "Picture", with: @idea6.picture
    fill_in "Price", with: @idea6.price
    fill_in "Table", with: @idea6.table
    click_on "Update Idea6"

    assert_text "Idea6 was successfully updated"
    click_on "Back"
  end

  test "should destroy Idea6" do
    visit idea6_url(@idea6)
    click_on "Destroy this idea6", match: :first

    assert_text "Idea6 was successfully destroyed"
  end
end
