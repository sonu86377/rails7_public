require "application_system_test_case"

class ProductItem1sTest < ApplicationSystemTestCase
  setup do
    @product_item1 = product_item1s(:one)
  end

  test "visiting the index" do
    visit product_item1s_url
    assert_selector "h1", text: "Product item1s"
  end

  test "should create product item1" do
    visit product_item1s_url
    click_on "New product item1"

    fill_in "Description", with: @product_item1.description
    fill_in "Name", with: @product_item1.name
    fill_in "Price", with: @product_item1.price
    click_on "Create Product item1"

    assert_text "Product item1 was successfully created"
    click_on "Back"
  end

  test "should update Product item1" do
    visit product_item1_url(@product_item1)
    click_on "Edit this product item1", match: :first

    fill_in "Description", with: @product_item1.description
    fill_in "Name", with: @product_item1.name
    fill_in "Price", with: @product_item1.price
    click_on "Update Product item1"

    assert_text "Product item1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Product item1" do
    visit product_item1_url(@product_item1)
    click_on "Destroy this product item1", match: :first

    assert_text "Product item1 was successfully destroyed"
  end
end
