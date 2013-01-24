require 'spec_helper'

describe "Static Pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App"}

 	describe "Home page" do
    	it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      		visit '/static_pages/home'
      		page.has_selector?('h1', :text => 'Sample App')
    end
	    it "should have the right title" do
			visit '/static_pages/home'
			page.has_selector?('title', :text => "#{base_title} | Home")
		end		
  	end

	describe "Help Page" do
		it "Should have the content 'Help'" do
			visit '/static_pages/help'
			page.has_selector?('h1', :text => 'Help')
		end
	    it "should have the right title" do
			visit '/static_pages/help'
			page.has_selector?('title', :text => "#{base_title} | Help")
		end			
	end

	describe "About Us" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			page.has_selector?('h1', :text => 'About Us')
		end
	    it "should have the right title" do
			visit '/static_pages/about'
			page.has_selector?('title', :text => "#{base_title} | About Us")
		end			
	end
	describe "Contact" do
		it "Should have the content 'Contact'" do
			visit '/static_pages/contact'
			page.has_selector?('h1', :text => 'Contact')
		end
	    it "should have the right title" do
			visit '/static_pages/help'
			page.has_selector?('title', :text => "#{base_title} | Contact")
		end			
	end
end
