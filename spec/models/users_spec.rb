require "spec_helper"

describe User do

  it "a password" do
    subject.email = "123@gmail.com"
    subject.should_not be_valid
    subject.errors[:password].should_not be_empty
  end

  it "without email" do
    subject.password = "123456"
    subject.should_not be_valid
    subject.errors[:email].should_not be_empty
  end

end