require "spec_helper"

describe "Items" do

  it "should not be valid without a name" do
    item = Item.new
    item.should_not be_valid
  end

end