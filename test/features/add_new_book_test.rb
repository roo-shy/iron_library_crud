# require "test_helper"
#
# class AddNewBookTest < Capybara::Rails::TestCase
#   setup do
#
#       Author.create! full_name: "Jeff Kinney", bio: "Jeffrey Patrick Kinney is an American game designer, cartoonist,
#       producer, actor and author of children's books including the Diary of a Wimpy Kid book series. He is also attributed as the creator of the child-oriented website Poptropica. ",
#       photo_url: "http://jzool-prd.s3.amazonaws.com/img/15759/m.jpg?1318396983"
#       User.create! name: "Bob", email: "bob@example.com", password: "12345678"
#     end
#   test "can add new book" do
#
#       visit root_path
#       click_link "New Book"
#
#       fill_in "Email", with: "bob@example.com"
#       fill_in "Password", with: "12345678"
#       click_button "Sign In"
#       click_link "New Book"
#
#       within("#new_book") do
#         fill_in "Title", with: "Diary of a Whimpy Kid"
#         fill_in "Price", with: "8.51"
#         attach_file("Book image", "#{Rails.root}/test/fixtures/765148.jpg")
#         select("Jeff Kinney", from: "Author")
#         click_button "Create Book"
#       end
#       assert_content page, "Diary of a Whimpy Kid"
#       save_and_open_page
#     end
#   end
