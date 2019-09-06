require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "lets a signed in user create a new product" do
    #login
    login_as users(:bruno)
    #visit products_new
    visit "/products/new"

    #fill the fields
    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life: Learn to code"

    #click on button to create
    click_on 'Create Product'

    #should redirect to homepage
    assert_equal root_path, page.current_path
    assert_text "Change your life: Learn to code"
  end
end
