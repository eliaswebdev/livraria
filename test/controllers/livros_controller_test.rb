require 'test_helper'

class LivrosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get busca" do
    get :busca
    assert_response :success
  end

end
