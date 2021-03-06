require 'test_helper'

class EmpresasControllerTest < ActionController::TestCase
  setup do
    @empresa = empresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresa" do
    assert_difference('Empresa.count') do
      post :create, empresa: { direccion1: @empresa.direccion1, direccion2: @empresa.direccion2, email: @empresa.email, lider_id: @empresa.lider_id, logofile: @empresa.logofile, nombre: @empresa.nombre, pais: @empresa.pais, provincia: @empresa.provincia, telefono: @empresa.telefono, website: @empresa.website, zipcode: @empresa.zipcode }
    end

    assert_redirected_to empresa_path(assigns(:empresa))
  end

  test "should show empresa" do
    get :show, id: @empresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empresa
    assert_response :success
  end

  test "should update empresa" do
    patch :update, id: @empresa, empresa: { direccion1: @empresa.direccion1, direccion2: @empresa.direccion2, email: @empresa.email, lider_id: @empresa.lider_id, logofile: @empresa.logofile, nombre: @empresa.nombre, pais: @empresa.pais, provincia: @empresa.provincia, telefono: @empresa.telefono, website: @empresa.website, zipcode: @empresa.zipcode }
    assert_redirected_to empresa_path(assigns(:empresa))
  end

  test "should destroy empresa" do
    assert_difference('Empresa.count', -1) do
      delete :destroy, id: @empresa
    end

    assert_redirected_to empresas_path
  end
end
