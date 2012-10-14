require "spec_helper"

describe Item do

  context "is not valid without "
  it "a name" do
    subject.should_not be_valid
    subject.errors[:name].should_not be_empty
  end

  it "description" do
    subject.name = "Mocha"
    subject.should_not be_valid
    subject.errors[:description].should_not be_empty
  end
end