require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get new" do
    get users_new_url
    assert_response :success
  end

>>>>>>> e24b61cf30f57235dabfa9559d991ac30cb52e3d
end
