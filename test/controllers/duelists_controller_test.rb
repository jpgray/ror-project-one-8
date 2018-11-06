require 'test_helper'

class DuelistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duelist = duelists(:one)
  end

  test "should get index" do
    get duelists_url
    assert_response :success
  end

  test "should get new" do
    get new_duelist_url
    assert_response :success
  end

  test "should create duelist" do
    assert_difference('Duelist.count') do
      post duelists_url, params: { duelist: { age: @duelist.age, favourite_card: @duelist.favourite_card, name: @duelist.name, picture: @duelist.picture, rating: @duelist.rating, user_id: @duelist.user_id } }
    end

    assert_redirected_to duelist_url(Duelist.last)
  end

  test "should show duelist" do
    get duelist_url(@duelist)
    assert_response :success
  end

  test "should get edit" do
    get edit_duelist_url(@duelist)
    assert_response :success
  end

  test "should update duelist" do
    patch duelist_url(@duelist), params: { duelist: { age: @duelist.age, favourite_card: @duelist.favourite_card, name: @duelist.name, picture: @duelist.picture, rating: @duelist.rating, user_id: @duelist.user_id } }
    assert_redirected_to duelist_url(@duelist)
  end

  test "should destroy duelist" do
    assert_difference('Duelist.count', -1) do
      delete duelist_url(@duelist)
    end

    assert_redirected_to duelists_url
  end
end
