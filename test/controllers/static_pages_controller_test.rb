require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  def setup
@base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end


  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get resume" do
    get :resume
    assert_response :success
    assert_select "title", "Resume | #{@base_title}"
    assert_select "h1", "ORAWO GETTY ANYANGO"
    assert_select "h3", /getty/i 
    assert_select "h2", "Mail"
    assert_select "h3", "e-mail"
    assert_select "h3", /mail/i 
    assert_select "h4", "2013 to present"
    assert_select "h5", "Computer Technology Project"
    assert_select "h6", "Design of an Automatic Light Sensor System"
  end
end
 