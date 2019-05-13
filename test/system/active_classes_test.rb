require "application_system_test_case"

class ActiveClassesTest < ApplicationSystemTestCase
  setup do
    @active_class = active_classes(:one)
  end

  test "visiting the index" do
    visit active_classes_url
    assert_selector "h1", text: "Active Classes"
  end

  test "creating a Active class" do
    visit active_classes_url
    click_on "New Active Class"

    fill_in "Class name", with: @active_class.class_name
    click_on "Create Active class"

    assert_text "Active class was successfully created"
    click_on "Back"
  end

  test "updating a Active class" do
    visit active_classes_url
    click_on "Edit", match: :first

    fill_in "Class name", with: @active_class.class_name
    click_on "Update Active class"

    assert_text "Active class was successfully updated"
    click_on "Back"
  end

  test "destroying a Active class" do
    visit active_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Active class was successfully destroyed"
  end
end
