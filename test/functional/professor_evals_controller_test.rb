require 'test_helper'

class ProfessorEvalsControllerTest < ActionController::TestCase
  setup do
    @professor_eval = professor_evals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professor_evals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professor_eval" do
    assert_difference('ProfessorEval.count') do
      post :create, professor_eval: { comment: @professor_eval.comment, q1: @professor_eval.q1, q2: @professor_eval.q2, q3: @professor_eval.q3, q4: @professor_eval.q4 }
    end

    assert_redirected_to professor_eval_path(assigns(:professor_eval))
  end

  test "should show professor_eval" do
    get :show, id: @professor_eval
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professor_eval
    assert_response :success
  end

  test "should update professor_eval" do
    put :update, id: @professor_eval, professor_eval: { comment: @professor_eval.comment, q1: @professor_eval.q1, q2: @professor_eval.q2, q3: @professor_eval.q3, q4: @professor_eval.q4 }
    assert_redirected_to professor_eval_path(assigns(:professor_eval))
  end

  test "should destroy professor_eval" do
    assert_difference('ProfessorEval.count', -1) do
      delete :destroy, id: @professor_eval
    end

    assert_redirected_to professor_evals_path
  end
end
