require 'test_helper'

class ConfessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @confession = confessions(:one)
  end

  test "should get index" do
    get confessions_url
    assert_response :success
  end

  test "should get new" do
    get new_confession_url
    assert_response :success
  end

  test "should create confession" do
    assert_difference('Confession.count') do
      post confessions_url, params: { confession: { text: @confession.text, title: @confession.title } }
    end

    assert_redirected_to confession_url(Confession.last)
  end

  test "should show confession" do
    get confession_url(@confession)
    assert_response :success
  end

  test "should get edit" do
    get edit_confession_url(@confession)
    assert_response :success
  end

  test "should update confession" do
    patch confession_url(@confession), params: { confession: { text: @confession.text, title: @confession.title } }
    assert_redirected_to confession_url(@confession)
  end

  test "should destroy confession" do
    assert_difference('Confession.count', -1) do
      delete confession_url(@confession)
    end

    assert_redirected_to confessions_url
  end
end
