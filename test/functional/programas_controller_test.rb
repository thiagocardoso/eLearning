require 'test_helper'

class ProgramasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programa" do
    assert_difference('Programa.count') do
      post :create, :programa => { }
    end

    assert_redirected_to programa_path(assigns(:programa))
  end

  test "should show programa" do
    get :show, :id => programas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => programas(:one).to_param
    assert_response :success
  end

  test "should update programa" do
    put :update, :id => programas(:one).to_param, :programa => { }
    assert_redirected_to programa_path(assigns(:programa))
  end

  test "should destroy programa" do
    assert_difference('Programa.count', -1) do
      delete :destroy, :id => programas(:one).to_param
    end

    assert_redirected_to programas_path
  end
end
