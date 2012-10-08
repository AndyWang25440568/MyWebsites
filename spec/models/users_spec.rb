require "rspec"

describe "Users" do

  it "should not be valid without a name" do
    user = User.new
    user.should_not be_valid
    user.errors[:email].should_not be_empty
    user.errors[:password].should_not be_empty
  end

end