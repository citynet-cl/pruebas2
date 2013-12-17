require 'test_helper'

class PorhacersControllerTest < ActionController::TestCase
  setup do
    @porhacer = porhacers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:porhacers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create porhacer" do
    assert_difference('Porhacer.count') do
      post :create, porhacer: { hecho: @porhacer.hecho, titulo: @porhacer.titulo }
    end

    assert_redirected_to porhacer_path(assigns(:porhacer))
  end

  test "should show porhacer" do
    get :show, id: @porhacer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @porhacer
    assert_response :success
  end

  test "should update porhacer" do
    patch :update, id: @porhacer, porhacer: { hecho: @porhacer.hecho, titulo: @porhacer.titulo }
    assert_redirected_to porhacer_path(assigns(:porhacer))
  end

  test "should destroy porhacer" do
    assert_difference('Porhacer.count', -1) do
      delete :destroy, id: @porhacer
    end

    assert_redirected_to porhacers_path
  end
end
