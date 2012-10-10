require "spec_helper"

describe "CommentsController" do

  describe "GET 'index'" do
      it "returns http success" do
       get "index"
       response.should be_success
      end

      it "assigns a list of comments of comments" do
        get "index"
        assigns[:comments].should_not be_nil
      end
  end
  describe "GET 'show'" do
    it "returns http success" do
      get "show"
      response.should be_success
    end
  end

end