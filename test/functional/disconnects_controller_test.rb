require 'test_helper'

class DisconnectsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:disconnects)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_disconnect
    assert_difference('Disconnect.count') do
      post :create, :disconnect => { }
    end

    assert_redirected_to disconnect_path(assigns(:disconnect))
  end

  def test_should_show_disconnect
    get :show, :id => disconnects(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => disconnects(:one).id
    assert_response :success
  end

  def test_should_update_disconnect
    put :update, :id => disconnects(:one).id, :disconnect => { }
    assert_redirected_to disconnect_path(assigns(:disconnect))
  end

  def test_should_destroy_disconnect
    assert_difference('Disconnect.count', -1) do
      delete :destroy, :id => disconnects(:one).id
    end

    assert_redirected_to disconnects_path
  end
end
