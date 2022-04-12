require 'rails_helper'

RSpec.describe 'Discover Page' do 
  it 'shows a list of nyt best seller categories' do 
    VCR.use_cassette('nyt_best_seller_lists') do 
      visit '/discover'

      expect(page.status_code).to eq(200)
      expect(page).to have_link("Combined Print & E-Book Fiction")
      expect(page).to have_link("Hardcover Nonfiction")
      expect(page).to have_link("Animals")
    end 

    click_link "Animals"

    expect(current_path).to eq("/discover/animals")
  end 
end 