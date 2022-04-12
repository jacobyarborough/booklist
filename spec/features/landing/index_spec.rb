require 'rails_helper'

RSpec.describe 'Landing Page' do 
  describe 'happy path functionality' do 
    before(:each) do 
      visit root_path
    end 

    it 'displays a welcome message' do 
      expect(page).to have_content("Welcome to the Reading List App!")
    end 

    it 'has a button to create a new user' do 
      expect(page).to have_button("Create a new user")

      click_on "Create a new user"

      expect(current_path).to eq('/register')
    end 

    it 'has a button to login' do 
      expect(page).to have_button("Login")

      click_on "Login"

      expect(current_path).to eq('/login')
    end 
  end 
end 