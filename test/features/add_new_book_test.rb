require "test_helper"

class AddNewBookTest < Capybara::Rails::TestCase

  setup do
      Author.create first_name: "Jeff", last_name: "Kinney", bio: "Jeffrey Patrick Kinney is an American game designer, cartoonist,
      producer, actor and author of children's books including the Diary of a Wimpy Kid book series. He is also attributed as the creator of the child-oriented website Poptropica. "
    end
  test "can add new book" do
    visit root_path
    click_link "New Book"
      within("#new_book") do
      fill_in "Title", with: "Diary of a Whimpy Kid"
      fill_in "Price", with: 8.51
      fill_in "Photo url", with: "www.google.com"
      fill_in "Author", with: 10
      click_button "Create Book"
    end
    visit root_path
    click_link "Book List"
      save_and_open_page
     assert_content page, "Diary of a Whimpy Kid"
    end
end
