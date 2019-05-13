require "application_system_test_case"

class ActiveClassListsTest < ApplicationSystemTestCase
  setup do
    @active_class_list = active_class_lists(:one)
  end

  test "visiting the index" do
    visit active_class_lists_url
    assert_selector "h1", text: "Active Class Lists"
  end

  test "creating a Active class list" do
    visit active_class_lists_url
    click_on "New Active Class List"

    fill_in "Active class", with: @active_class_list.active_class_id
    fill_in "Student", with: @active_class_list.student_id
    click_on "Create Active class list"

    assert_text "Active class list was successfully created"
    click_on "Back"
  end

  test "updating a Active class list" do
    visit active_class_lists_url
    click_on "Edit", match: :first

    fill_in "Active class", with: @active_class_list.active_class_id
    fill_in "Student", with: @active_class_list.student_id
    click_on "Update Active class list"

    assert_text "Active class list was successfully updated"
    click_on "Back"
  end

  test "destroying a Active class list" do
    visit active_class_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Active class list was successfully destroyed"
  end
end
