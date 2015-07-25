require 'test_helper'

class FreshersControllerTest < ActionController::TestCase
  setup do
    @fresher = freshers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:freshers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fresher" do
    assert_difference('Fresher.count') do
      post :create, fresher: { branch: @fresher.branch, contact: @fresher.contact, email: @fresher.email, enroll: @fresher.enroll, interests: @fresher.interests, name: @fresher.name, room: @fresher.room, skills: @fresher.skills }
    end

    assert_redirected_to fresher_path(assigns(:fresher))
  end

  test "should show fresher" do
    get :show, id: @fresher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fresher
    assert_response :success
  end

  test "should update fresher" do
    patch :update, id: @fresher, fresher: { branch: @fresher.branch, contact: @fresher.contact, email: @fresher.email, enroll: @fresher.enroll, interests: @fresher.interests, name: @fresher.name, room: @fresher.room, skills: @fresher.skills }
    assert_redirected_to fresher_path(assigns(:fresher))
  end

  test "should destroy fresher" do
    assert_difference('Fresher.count', -1) do
      delete :destroy, id: @fresher
    end

    assert_redirected_to freshers_path
  end
end
