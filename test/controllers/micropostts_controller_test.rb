require 'test_helper'

class MicroposttsControllerTest < ActionController::TestCase
  setup do
    @micropostt = micropostts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropostts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropostt" do
    assert_difference('Micropostt.count') do
      post :create, micropostt: { content: @micropostt.content, user_id: @micropostt.user_id }
    end

    assert_redirected_to micropostt_path(assigns(:micropostt))
  end

  test "should show micropostt" do
    get :show, id: @micropostt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropostt
    assert_response :success
  end

  test "should update micropostt" do
    patch :update, id: @micropostt, micropostt: { content: @micropostt.content, user_id: @micropostt.user_id }
    assert_redirected_to micropostt_path(assigns(:micropostt))
  end

  test "should destroy micropostt" do
    assert_difference('Micropostt.count', -1) do
      delete :destroy, id: @micropostt
    end

    assert_redirected_to micropostts_path
  end
end
