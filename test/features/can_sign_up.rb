require "test_helper"

class CanSignUpTest < Capybara::Rails::TestCase

  test "can signup" do

    visit root_path
    click_link "Book List"

    within("#register") do
    fill_in "Name", with: "Bob"
    fill_in "Email", with: "bob@example.com"
    fill_in "Password", with: "12345678"
    click_button "Create User"
    end
     assert_content page, "Sign In"
  end
end
