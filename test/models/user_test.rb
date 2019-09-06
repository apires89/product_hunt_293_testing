require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name retuerns the capitalized first name and last name"  do
  #create user
  user = User.new(first_name:"jose", last_name:"bastos")
  #check if user first_name and last_name returns using full_name the capitalized
  assert_equal "Jose Bastos", user.full_name
  end
end
