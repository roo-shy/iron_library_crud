require "test_helper"

class CanSignInTest < Capybara::Rails::TestCase

  setup do
    User.create! name: "Bob", email: "bob@example.com", password: "12345678"
  end

  test "can sign in" do
    visit root_path
    click_link "Book List"
    fill_in "Email", with: "bob@example.com"
    fill_in "Password", with: "12345678"
    click_button "Sign In"

  end
    
end
