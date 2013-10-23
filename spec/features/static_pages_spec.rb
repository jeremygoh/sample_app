require 'spec_helper'

describe 'Static pages' do

  subject { page }

    describe "Home Page" do
      before { visit root_path}

      it { should have_content "Sample App" }

      it { should_not have_title "| Home"}
    end

    describe "Help page" do
      it "should have the content 'Help'" do
        visit help_path
        expect(page).to have_content("Help")
      end
    end

    describe "About page" do
      it "should have the content 'About us'" do
        visit about_path
        expect(page).to have_content('About Us')
      end
    end

    describe "Contact page" do
      it "should have the content 'Contact us'" do
        visit contact_path
        expect(page).to have_content('Contact Us')
      end
    end
end