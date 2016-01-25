require 'test_helper'

class UserMailersControllerTest < ActionController::TestCase
  setup do
    @user_mailer = user_mailers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_mailers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_mailer" do
    assert_difference('UserMailer.count') do
      post :create, user_mailer: { email: @user_mailer.email, login: @user_mailer.login, name: @user_mailer.name }
    end

    assert_redirected_to user_mailer_path(assigns(:user_mailer))
  end

  test "should show user_mailer" do
    get :show, id: @user_mailer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_mailer
    assert_response :success
  end

  test "should update user_mailer" do
    patch :update, id: @user_mailer, user_mailer: { email: @user_mailer.email, login: @user_mailer.login, name: @user_mailer.name }
    assert_redirected_to user_mailer_path(assigns(:user_mailer))
  end

  test "should destroy user_mailer" do
    assert_difference('UserMailer.count', -1) do
      delete :destroy, id: @user_mailer
    end

    assert_redirected_to user_mailers_path
  end
end
