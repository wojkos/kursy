require 'test_helper'

class GaleriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get nowa" do
    get :nowa
    assert_response :success
  end

  test "should get pokaz" do
    get :pokaz
    assert_response :success
  end

  test "should get edytuj" do
    get :edytuj
    assert_response :success
  end

  test "should get usun" do
    get :usun
    assert_response :success
  end

end
