require 'test_helper'

class AudienceListsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audience_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audience_list" do
    assert_difference('AudienceList.count') do
      post :create, :audience_list => { }
    end

    assert_redirected_to audience_list_path(assigns(:audience_list))
  end

  test "should show audience_list" do
    get :show, :id => audience_lists(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => audience_lists(:one).to_param
    assert_response :success
  end

  test "should update audience_list" do
    put :update, :id => audience_lists(:one).to_param, :audience_list => { }
    assert_redirected_to audience_list_path(assigns(:audience_list))
  end

  test "should destroy audience_list" do
    assert_difference('AudienceList.count', -1) do
      delete :destroy, :id => audience_lists(:one).to_param
    end

    assert_redirected_to audience_lists_path
  end
end
