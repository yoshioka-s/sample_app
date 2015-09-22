require 'test_helper'
# tests for static page controller
class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @base_tiele = 'Ruby on Rails Tutorial Sample App'
  end
  test "should get home" do
    get :home
    assert_response :success
    assert_select 'title', "Home | #{@base_tiele}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select 'title', "Help | #{@base_tiele}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select 'title', "About | #{@base_tiele}"
  end
end
