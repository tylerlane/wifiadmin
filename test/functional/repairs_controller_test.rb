require 'test_helper'

class RepairsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:repairs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_repair
    assert_difference('Repair.count') do
      post :create, :repair => { }
    end

    assert_redirected_to repair_path(assigns(:repair))
  end

  def test_should_show_repair
    get :show, :id => repairs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => repairs(:one).id
    assert_response :success
  end

  def test_should_update_repair
    put :update, :id => repairs(:one).id, :repair => { }
    assert_redirected_to repair_path(assigns(:repair))
  end

  def test_should_destroy_repair
    assert_difference('Repair.count', -1) do
      delete :destroy, :id => repairs(:one).id
    end

    assert_redirected_to repairs_path
  end
end
