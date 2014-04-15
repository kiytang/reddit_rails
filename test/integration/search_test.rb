require 'test_helper'

class SearchTest < ActionDispatch::IntegrationTest
  
  test "search for item in database works" do
    user = User.create(:email => "#{Time.now.to_f}@example.com", :password => "password")
    visit new_user_session_path
    assert_equal '/users/sign_in', current_path
    
    fill_in 'user_email', :with => user.email
    fill_in 'user_password', :with => 'password'
    
    click_button 'Sign in'
    refute_equal new_user_session_path, current_path
    
    link = Link.create(:title => "Homepage of the Internet", :url => "http://reddit.com")
    
    searchinput = "Internet homepage"
    fill_in 'q', :with => searchinput
    click_button 'Search'

    assert page.has_content?('Homepage of the Internet')
    assert_equal search_path, current_path

    save_and_open_page
  end

end