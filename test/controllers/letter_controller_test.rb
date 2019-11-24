require 'test_helper'

class LetterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get letter_index_url
    assert_response :success
  end

end
