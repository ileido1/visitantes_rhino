require "application_system_test_case"

class VisitorsTest < ApplicationSystemTestCase
  setup do
    @visitor = visitors(:one)
  end

  test "visiting the index" do
    visit visitors_url
    assert_selector "h1", text: "Visitors"
  end

  test "creating a Visitor" do
    visit visitors_url
    click_on "New Visitor"

    fill_in "Alergy", with: @visitor.alergy
    fill_in "Arl", with: @visitor.arl
    fill_in "Arrival", with: @visitor.arrival
    fill_in "Company", with: @visitor.company
    fill_in "Date", with: @visitor.date
    fill_in "Eps", with: @visitor.eps
    check "Injury" if @visitor.injury
    fill_in "Name", with: @visitor.name
    fill_in "Output", with: @visitor.output
    fill_in "Phone", with: @visitor.phone
    fill_in "Rh", with: @visitor.rh
    click_on "Create Visitor"

    assert_text "Visitor was successfully created"
    click_on "Back"
  end

  test "updating a Visitor" do
    visit visitors_url
    click_on "Edit", match: :first

    fill_in "Alergy", with: @visitor.alergy
    fill_in "Arl", with: @visitor.arl
    fill_in "Arrival", with: @visitor.arrival
    fill_in "Company", with: @visitor.company
    fill_in "Date", with: @visitor.date
    fill_in "Eps", with: @visitor.eps
    check "Injury" if @visitor.injury
    fill_in "Name", with: @visitor.name
    fill_in "Output", with: @visitor.output
    fill_in "Phone", with: @visitor.phone
    fill_in "Rh", with: @visitor.rh
    click_on "Update Visitor"

    assert_text "Visitor was successfully updated"
    click_on "Back"
  end

  test "destroying a Visitor" do
    visit visitors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visitor was successfully destroyed"
  end
end
