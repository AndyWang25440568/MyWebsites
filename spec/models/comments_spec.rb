require "spec_helper"

describe "Comment" do
    it "is not valid without an item_id" do
      comment=Comment.new
      comment.should_not be_valid
      comment.errors[:item_id].should_not be_empty
    end

    it " is not valid without content" do
      comment=Comment.new
      comment.should_not be_valid
      comment.errors[:content].should_not be_empty
    end
    it "belongs to an item" do
       comment = Comment.new
       comment.should respond_to(:item)
    end
end