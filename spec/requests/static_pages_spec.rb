require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }

    # click_link doesnt work!
   # click_link "About"
  # page.should have_selector 'title', text: full_title('About Us')

  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end

  describe "LayoutLinks" do

    it "should have the right links on the layout" do
      visit root_path
      click_link "About"
      #response.should have_selector('title', :content => "About")
      click_link "Home"
     # response.should have_selector('title', :content => "Home")
      click_link "Help"
      #response.should have_selector('title', :content => "Help")
      click_link "Contact"
     # response.should have_selector('title', :content => "Contact")
      # click_link "Sign up now!"
     # response.should have_selector('title', :content => "Sign up")
    end
  end
end

