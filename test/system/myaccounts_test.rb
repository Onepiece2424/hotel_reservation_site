require "application_system_test_case"

class MyaccountsTest < ApplicationSystemTestCase
  setup do
    @myaccount = myaccounts(:one)
  end

  test "visiting the index" do
    visit myaccounts_url
    assert_selector "h1", text: "Myaccounts"
  end

  test "creating a Myaccount" do
    visit myaccounts_url
    click_on "New Myaccount"

    fill_in "Icon", with: @myaccount.icon
    fill_in "Introduction", with: @myaccount.introduction
    fill_in "Name", with: @myaccount.name
    click_on "Create Myaccount"

    assert_text "Myaccount was successfully created"
    click_on "Back"
  end

  test "updating a Myaccount" do
    visit myaccounts_url
    click_on "Edit", match: :first

    fill_in "Icon", with: @myaccount.icon
    fill_in "Introduction", with: @myaccount.introduction
    fill_in "Name", with: @myaccount.name
    click_on "Update Myaccount"

    assert_text "Myaccount was successfully updated"
    click_on "Back"
  end

  test "destroying a Myaccount" do
    visit myaccounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Myaccount was successfully destroyed"
  end
end
