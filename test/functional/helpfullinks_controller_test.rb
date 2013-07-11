require 'test_helper'

class HelpfullinksControllerTest < ActionController::TestCase
  setup do
    @helpfullink = helpfullinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:helpfullinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create helpfullink" do
    assert_difference('Helpfullink.count') do
      post :create, helpfullink: { date_submitted: @helpfullink.date_submitted, description: @helpfullink.description, title: @helpfullink.title, url: @helpfullink.url }
    end

    assert_redirected_to helpfullink_path(assigns(:helpfullink))
  end

  test "should show helpfullink" do
    get :show, id: @helpfullink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @helpfullink
    assert_response :success
  end

  test "should update helpfullink" do
    put :update, id: @helpfullink, helpfullink: { date_submitted: @helpfullink.date_submitted, description: @helpfullink.description, title: @helpfullink.title, url: @helpfullink.url }
    assert_redirected_to helpfullink_path(assigns(:helpfullink))
  end

  test "should destroy helpfullink" do
    assert_difference('Helpfullink.count', -1) do
      delete :destroy, id: @helpfullink
    end

    assert_redirected_to helpfullinks_path
  end
end
