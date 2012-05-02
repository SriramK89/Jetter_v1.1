require 'test_helper'

class JetsControllerTest < ActionController::TestCase
  setup do
    @jet = jets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jet" do
    assert_difference('Jet.count') do
      post :create, jet: { content: @jet.content, userid: @jet.userid }
    end

    assert_redirected_to jet_path(assigns(:jet))
  end

  test "should show jet" do
    get :show, id: @jet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jet
    assert_response :success
  end

  test "should update jet" do
    put :update, id: @jet, jet: { content: @jet.content, userid: @jet.userid }
    assert_redirected_to jet_path(assigns(:jet))
  end

  test "should destroy jet" do
    assert_difference('Jet.count', -1) do
      delete :destroy, id: @jet
    end

    assert_redirected_to jets_path
  end
end
