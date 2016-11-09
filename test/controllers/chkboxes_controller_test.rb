require 'test_helper'

class ChkboxesControllerTest < ActionController::TestCase
  setup do
    @chkbox = chkboxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chkboxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chkbox" do
    assert_difference('Chkbox.count') do
      post :create, chkbox: { hante: @chkbox.hante, suuji: @chkbox.suuji }
    end

    assert_redirected_to chkbox_path(assigns(:chkbox))
  end

  test "should show chkbox" do
    get :show, id: @chkbox
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chkbox
    assert_response :success
  end

  test "should update chkbox" do
    patch :update, id: @chkbox, chkbox: { hante: @chkbox.hante, suuji: @chkbox.suuji }
    assert_redirected_to chkbox_path(assigns(:chkbox))
  end

  test "should destroy chkbox" do
    assert_difference('Chkbox.count', -1) do
      delete :destroy, id: @chkbox
    end

    assert_redirected_to chkboxes_path
  end
end
