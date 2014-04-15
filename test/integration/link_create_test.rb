require 'test_helper'

class LinkCreateTest < ActionDispatch::IntegrationTest

test "the world is round" do
  assert true
end

test "logged in user submits valid links"do
  user = User.create(:email => "#{Time.now.to_f}@example.com", :password => "password")

end
end