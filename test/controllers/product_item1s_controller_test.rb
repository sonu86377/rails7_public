require "test_helper"

class ProductItem1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_item1 = product_item1s(:one)
  end

  test "should get index" do
    get product_item1s_url
    assert_response :success
  end

  test "should get new" do
    get new_product_item1_url
    assert_response :success
  end

  test "should create product_item1" do
    assert_difference("ProductItem1.count") do
      post product_item1s_url, params: { product_item1: { description: @product_item1.description, name: @product_item1.name, price: @product_item1.price } }
    end

    assert_redirected_to product_item1_url(ProductItem1.last)
  end

  test "should show product_item1" do
    get product_item1_url(@product_item1)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_item1_url(@product_item1)
    assert_response :success
  end

  test "should update product_item1" do
    patch product_item1_url(@product_item1), params: { product_item1: { description: @product_item1.description, name: @product_item1.name, price: @product_item1.price } }
    assert_redirected_to product_item1_url(@product_item1)
  end

  test "should destroy product_item1" do
    assert_difference("ProductItem1.count", -1) do
      delete product_item1_url(@product_item1)
    end

    assert_redirected_to product_item1s_url
  end
end
