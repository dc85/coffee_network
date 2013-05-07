require 'spec_helper'

describe "Splash pages" do

  describe "Home page" do

    it "should have the content 'hello@coffeenetwork.ca'" do
      visit '/splash_pages/home'
      page.should have_content('hello@coffeenetwork.ca')
    end
    
    it "should have the right title" do
      visit '/splash_pages/home'
      page.should have_selector('title',
                        :text => "Coffee Network | Home")
    end
  end
  
  describe "Help page" do

    it "should have the content 'help@coffeenetwork.ca'" do
      visit '/splash_pages/help'
      page.should have_content('help@coffeenetwork.ca')
    end
    
    it "should have the right title" do
      visit '/splash_pages/help'
      page.should have_selector('title',
                        :text => "Coffee Network | Help")
    end
  end
  
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/splash_pages/about'
      page.should have_content('About Us')
    end
    
    it "should have the right title" do
      visit '/splash_pages/about'
      page.should have_selector('title',
                        :text => "Coffee Network | About")
    end
  end
end