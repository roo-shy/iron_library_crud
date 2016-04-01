require "test_helper"

class AddNewBookTest < Capybara::Rails::TestCase

  setup do

      Author.create! full_name: "Jeff Kinney", bio: "Jeffrey Patrick Kinney is an American game designer, cartoonist,
      producer, actor and author of children's books including the Diary of a Wimpy Kid book series. He is also attributed as the creator of the child-oriented website Poptropica. ",
      photo_url: "http://jzool-prd.s3.amazonaws.com/img/15759/m.jpg?1318396983"
      User.create! name: "Bob", email: "bob@example.com", password: "12345678"
    end
  test "can add new book" do
    def log_in_as(user, options = {})
      password    = options[:password]    || 'password'
      remember_me = options[:remember_me] || '1'
      if integration_test?
        post login_path, session: { name:       user.name,
                                    email:       user.email,
                                    password:    password,
                                    remember_me: remember_me }
      else
        session[:user_id] = user.id
      end
    end
      visit root_path
      click_link "New Book"

      fill_in "Email", with: "bob@example.com"
      fill_in "Password", with: "12345678"
      click_button "Sign In"
      click_link "New Book"

      within("#new_book") do
        fill_in "Title", with: "Diary of a Whimpy Kid"
        fill_in "Price", with: "8.51"
        fill_in "Photo url", with: "http://jzool-prd.s3.amazonaws.com/img/15759/m.jpg?1318396983"
        fill_in "Author", with: "Jeff Kinney"
        click_button "Create Book"
      end
      assert_content page, "Diary of a Whimpy Kid"
      # save_and_open_page
    end
  end
