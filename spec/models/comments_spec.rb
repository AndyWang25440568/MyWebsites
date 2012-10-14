require "spec_helper"

describe Comment do
  context "is not valid without "
  it "an item_id" do
    subject.should_not be_valid
    subject.errors[:item_id].should_not be_empty
  end

  it "a content" do
    subject.item_id = 10
    subject.should_not be_valid
    subject.errors[:content].should_not be_empty
  end

  it "a grade" do
    subject.item_id = 199
    subject.content = "Brand new"
    subject.should_not be_valid
    subject.errors[:grade].should_not be_empty
  end
end