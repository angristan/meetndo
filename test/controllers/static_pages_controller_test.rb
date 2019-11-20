require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "meet&do"
  end

  test "should get root" do
    get root_url
    assert_response :success
    assert_select 'title', @base_title
  end

  test 'should get home' do
    get '/home'
    assert_response :success
  end

  test 'should get about' do
    get '/about'
    assert_response :success
  end
end
