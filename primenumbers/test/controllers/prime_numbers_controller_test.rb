require 'test_helper'

class PrimeNumbersControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get prime_numbers_get_url
    assert_response :success
  end

end
