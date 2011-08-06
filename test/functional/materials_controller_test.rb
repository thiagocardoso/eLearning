require 'test_helper'

class MaterialsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material" do
    assert_difference('Material.count') do
      post :create, :material => { }
    end

    assert_redirected_to material_path(assigns(:material))
  end

  test "should show material" do
    get :show, :id => materials(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => materials(:one).to_param
    assert_response :success
  end

  test "should update material" do
    put :update, :id => materials(:one).to_param, :material => { }
    assert_redirected_to material_path(assigns(:material))
  end

  test "should destroy material" do
    assert_difference('Material.count', -1) do
      delete :destroy, :id => materials(:one).to_param
    end

    assert_redirected_to materials_path
  end
end
