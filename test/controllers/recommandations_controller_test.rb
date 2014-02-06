require 'test_helper'

class RecommandationsControllerTest < ActionController::TestCase
  setup do
    @recommandation = recommandations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recommandations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recommandation" do
    assert_difference('Recommandation.count') do
      post :create, recommandation: {  }
    end

    assert_redirected_to recommandation_path(assigns(:recommandation))
  end

  test "should show recommandation" do
    get :show, id: @recommandation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recommandation
    assert_response :success
  end

  test "should update recommandation" do
    patch :update, id: @recommandation, recommandation: {  }
    assert_redirected_to recommandation_path(assigns(:recommandation))
  end

  test "should destroy recommandation" do
    assert_difference('Recommandation.count', -1) do
      delete :destroy, id: @recommandation
    end

    assert_redirected_to recommandations_path
  end
end
