require "application_system_test_case"

class ProductsSizesTest < ApplicationSystemTestCase
  setup do
    @products_size = products_sizes(:one)
  end

  test "visiting the index" do
    visit products_sizes_url
    assert_selector "h1", text: "Products Sizes"
  end

  test "creating a Products size" do
    visit products_sizes_url
    click_on "New Products Size"

    fill_in "Price", with: @products_size.price
    fill_in "Product", with: @products_size.product_id
    fill_in "Size", with: @products_size.size_id
    click_on "Create Products size"

    assert_text "Products size was successfully created"
    click_on "Back"
  end

  test "updating a Products size" do
    visit products_sizes_url
    click_on "Edit", match: :first

    fill_in "Price", with: @products_size.price
    fill_in "Product", with: @products_size.product_id
    fill_in "Size", with: @products_size.size_id
    click_on "Update Products size"

    assert_text "Products size was successfully updated"
    click_on "Back"
  end

  test "destroying a Products size" do
    visit products_sizes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Products size was successfully destroyed"
  end
end
