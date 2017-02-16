require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "will fail. why?" do
    @mock = MiniTest::Mock.new
    @mock.expect(:world, "test world")

    User.stub(:find, @mock) do
      get user_path(id: 1, format: :hal_json)
      assert_equal "application/hal+json", response.headers["Content-Type"]
      json = JSON.parse(response.body)
      assert_equal "test world", json["hello"]
    end
  end
end
