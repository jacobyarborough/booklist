require 'rails_helper' 

RSpec.describe 'new users page' do 
  it 'shows a form to register a new user' do 
    visit '/register'

    expect(current_path).to eq('/register')
    expect(page).to have_content("Register New User")
    expect(page).to have_content("Name")
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")
    expect(page).to have_content("Password confirmation")
    expect(page).to have_button("Register")
  end 

  it 'can register a new user' do 
    visit '/register'

    fill_in :name, with: "Snoopy"
    fill_in :email, with: "snoopy@peanuts.com"
    fill_in :password, with: "password"
    fill_in :password_confirmation, with: "password"
    click_on "Register"

    expect(current_path).to eq("/dashboard")
  end 
end 