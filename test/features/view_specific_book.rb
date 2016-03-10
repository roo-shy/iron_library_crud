book.photo = file
     end
     book.save!
+
+    User.create! name: "Bob", email: "bob@example.com", password: "12345678"
+
   end

   test "view book" do
     visit root_path
     assert_content page, "Yummmm"
     click_link "All books"
-    fill_in :passcode, with: "yolo"
+
+    fill_in :email, with: "bob@example.com"
+    fill_in :password, with: "12345678"
     click_button "Sign In"
+    click_link "Book List"

     click_link "Cornmeal Pancakes"
     assert_content page, "Ingredients"
# @@ -32,8 +38,11 @@ class ViewSpecificbookTest < Capybara::Rails::TestCase
     original_count = book.view_count

     visit book_path(id: book.id)
-    fill_in :passcode, with: "yolo"
+
+    fill_in :email, with: "bob@example.com"
+    fill_in :password, with: "12345678"
     click_button "Sign In"
+    click_link "All books"

     3.times do
       visit book_path(id: book.id)
