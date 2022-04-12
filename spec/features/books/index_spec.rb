require 'rails_helper' 

RSpec.describe 'Books Index Page' do 
  it 'displays a list of books from a particular NYT best seller category' do 
    VCR.use_cassette('books_list') do 
      visit "/discover/hardcover-fiction"

      expect(page.status_code).to eq(200)
    end 
  end 
end 