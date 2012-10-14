require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do
    it "should have the h1 'MyWebsites'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'MyWebsites')
    end


  end

  describe "Help Page" do
    it "should have the h1 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_selector('h1',:text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                                :text => "This is the help page for MyWebsites | Help")
    end

  end

  describe "About Us" do
    it "should have the content 'About Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      page.should have_content('About us')
    end
  end

  describe "Contact Page" do
    it "should have the h2 'Contact Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/contact'
      page.should have_selector('h2',:text => 'Contact Us')
    end

  end

end
