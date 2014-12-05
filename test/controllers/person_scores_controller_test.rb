require 'test_helper'

class PersonScoresControllerTest < ActionController::TestCase
  setup do
    @person_score = person_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_score" do
    assert_difference('PersonScore.count') do
      post :create, person_score: { create: @person_score.create, hi_score: @person_score.hi_score, name: @person_score.name, score: @person_score.score, update: @person_score.update }
    end

    assert_redirected_to person_score_path(assigns(:person_score))
  end

  test "should show person_score" do
    get :show, id: @person_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_score
    assert_response :success
  end

  test "should update person_score" do
    patch :update, id: @person_score, person_score: { create: @person_score.create, hi_score: @person_score.hi_score, name: @person_score.name, score: @person_score.score, update: @person_score.update }
    assert_redirected_to person_score_path(assigns(:person_score))
  end

  test "should destroy person_score" do
    assert_difference('PersonScore.count', -1) do
      delete :destroy, id: @person_score
    end

    assert_redirected_to person_scores_path
  end
end
