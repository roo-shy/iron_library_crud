require "test_helper"

class CanSignUpTest < Capybara::Rails::TestCase

  test "can signup" do

    visit root_path
    click_link "Book List"

    within("#new_user") do
      fill_in "Email", with: "bob@example.com"
      fill_in "Password", with: "12345678"
      fill_in "Name", with: "Bob"
      click_button "Create User"
    end

  end
end
