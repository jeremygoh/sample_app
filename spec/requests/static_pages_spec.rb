require 'spec_helper'

describe 'Static pages' do

    describe "Home Page" do
      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Sample App')
      end

      it "should have the title 'Home Page'" do
        visit '/static_pages/home'
        expect(page).to have_title("Home Page")
      end
    end

    describe "Help page" do
      it "should have the content 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_content("Help")
      end
    end

    describe "About page" do
      it "should have the content 'About us'" do
        visit "/static_pages/about"
        expect(page).to have_content('About Us')
      end
    end
end