require "test_helper"

class AddNewBook < Capybara::Rails::TestCase

 setup do
   Author.create! first_name: "Alan", last_name: "Moore", bio: "YYYYYY"
 end

test "Can Add New Book" do

   visit root_path

   click_link "New Book"
   within("#new_book") do
   fill_in "Title", with: "BATMAN"
   fill_in "Price", with: "$17"
   fill_in "Photo", with: "http://www.ultimatestock.co.uk/wp-content/uploads/2016/02/Modern-Romance-Written-By-Aziz-Ansari-500x600.jpg"
   select "Alan Moore", :from => "Author"
   click_button "Create Book"

   assert_content page, "BATMAN"
    end
  end
end
