require 'test_helper'

class QuestaosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questao" do
    assert_difference('Questao.count') do
      post :create, :questao => { }
    end

    assert_redirected_to questao_path(assigns(:questao))
  end

  test "should show questao" do
    get :show, :id => questaos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => questaos(:one).to_param
    assert_response :success
  end

  test "should update questao" do
    put :update, :id => questaos(:one).to_param, :questao => { }
    assert_redirected_to questao_path(assigns(:questao))
  end

  test "should destroy questao" do
    assert_difference('Questao.count', -1) do
      delete :destroy, :id => questaos(:one).to_param
    end

    assert_redirected_to questaos_path
  end
end
