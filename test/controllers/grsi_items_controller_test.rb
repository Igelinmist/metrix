require 'test_helper'

class GrsiItemsControllerTest < ActionController::TestCase
  setup do
    @grsi_item = grsi_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grsi_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grsi_item" do
    assert_difference('GrsiItem.count') do
      post :create, grsi_item: { country: @grsi_item.country, factory: @grsi_item.factory, mpi_year: @grsi_item.mpi_year, reestr_name: @grsi_item.reestr_name, reestr_nmbr: @grsi_item.reestr_nmbr, reestr_type: @grsi_item.reestr_type, valid_until: @grsi_item.valid_until }
    end

    assert_redirected_to grsi_item_path(assigns(:grsi_item))
  end

  test "should show grsi_item" do
    get :show, id: @grsi_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grsi_item
    assert_response :success
  end

  test "should update grsi_item" do
    patch :update, id: @grsi_item, grsi_item: { country: @grsi_item.country, factory: @grsi_item.factory, mpi_year: @grsi_item.mpi_year, reestr_name: @grsi_item.reestr_name, reestr_nmbr: @grsi_item.reestr_nmbr, reestr_type: @grsi_item.reestr_type, valid_until: @grsi_item.valid_until }
    assert_redirected_to grsi_item_path(assigns(:grsi_item))
  end

  test "should destroy grsi_item" do
    assert_difference('GrsiItem.count', -1) do
      delete :destroy, id: @grsi_item
    end

    assert_redirected_to grsi_items_path
  end
end
