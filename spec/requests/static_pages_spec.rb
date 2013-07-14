require 'spec_helper'

describe "Static  pages" do

	subject { page }

	describe "Home page" do
		before { visit root_path }

		it { should have_selector('h1', :text => 'Sample App') }


		it { should have_selector('title', :text => "Ruby on Rails Tutorial Sample App") }

		it "should not have a custom page title" do
			page.should_not have_selector('title', :text => '| Home')
		end
end
	

	describe "Help page" do

		before { visit help_path }

		it "should have the h1 as 'Help!'" do
			page.should have_selector('h1', :text => 'Help!')
		end
		it "should have the right title" do	
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe "About page" do
		before { visit about_path }

		it "should have the h1 as 'About Us'" do
			page.should have_selector('h1', :text => 'About Us')
		end
		it "should have the right title" do
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
		end
	end

	describe "Contact page" do
		before { visit contact_path }
		it "should have the h1 as 'Contact'" do
			page.should have_selector('h1', :text => 'Contact')
		end
		it "should have the right title" do
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Contact")
		end
	end
end
