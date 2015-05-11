require 'test_helper'

class MacroControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
