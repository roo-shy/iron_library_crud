require "test_helper"

class BookCheckout < Capybara::Rails::TestCase
  setup do

      Author.create! full_name: "Jeff Kinney", bio: "Jeffrey Patrick Kinney is an American game designer, cartoonist,
      producer, actor and author of children's books including the Diary of a Wimpy Kid book series. He is also attributed as the creator of the child-oriented website Poptropica. ",
      photo_url: "http://jzool-prd.s3.amazonaws.com/img/15759/m.jpg?1318396983"
      User.create! name: "Bob", email: "bob@example.com", password: "12345678"
    end
  test "book checkout" do

      visit root_path
      click_link "New Book"

      fill_in "Email", with: "bob@example.com"
      fill_in "Password", with: "12345678"
      click_button "Sign In"
      click_link "Book List"
      click_button "ADD TO CART"
      click_button "Pay with Card"

      within("#payment-form") do
        fill_in "Name", with: "Rooshy"
        fill_in "Address", with: "4203 Montrose Blvd"
        fill_in "ZIP", with: "77006"
        fill_in "City", with: "Houston"
        click_button "Payment Info"
        fill_in "Card number", with: "4242424242424242"
        fill_in "MM/YY", with: "05/17"
        fill_in "CVC", with: "354"
        click_button "submitButton"
      end
      assert_content page, "Purchase Date"
      save_and_open_page
    end
  end
