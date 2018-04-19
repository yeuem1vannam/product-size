require 'test_helper'

class ProductsSizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @products_size = products_sizes(:one)
  end

  test "should get index" do
    get products_sizes_url
    assert_response :success
  end

  test "should get new" do
    get new_products_size_url
    assert_response :success
  end

  test "should create products_size" do
    assert_difference('ProductsSize.count') do
      post products_sizes_url, params: { products_size: { price: @products_size.price, product_id: @products_size.product_id, size_id: @products_size.size_id } }
    end

    assert_redirected_to products_size_url(ProductsSize.last)
  end

  test "should show products_size" do
    get products_size_url(@products_size)
    assert_response :success
  end

  test "should get edit" do
    get edit_products_size_url(@products_size)
    assert_response :success
  end

  test "should update products_size" do
    patch products_size_url(@products_size), params: { products_size: { price: @products_size.price, product_id: @products_size.product_id, size_id: @products_size.size_id } }
    assert_redirected_to products_size_url(@products_size)
  end

  test "should destroy products_size" do
    assert_difference('ProductsSize.count', -1) do
      delete products_size_url(@products_size)
    end

    assert_redirected_to products_sizes_url
  end
end
