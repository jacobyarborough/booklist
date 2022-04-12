require 'rails_helper'

RSpec.describe "NYT Service" do 
  describe '.get_lists' do 
    it 'returns a list of nyt best seller categories', :vcr do 
      response = NytService.get_lists

      expect(response).to be_a(Hash)
      expect(response).to have_key(:results)
      expect(response[:results]).to be_an(Array)
      
      response[:results].each do |list|
        expect(list).to be_a(Hash)
        expect(list).to have_key(:list_name)
        expect(list[:list_name]).to be_a(String)
        expect(list).to have_key(:display_name)
        expect(list[:display_name]).to be_a(String)
        expect(list).to have_key(:list_name_encoded)
        expect(list[:list_name_encoded]).to be_a(String)
        expect(list).to have_key(:oldest_published_date)
        expect(list[:oldest_published_date]).to be_a(String)
        expect(list).to have_key(:newest_published_date)
        expect(list[:newest_published_date]).to be_a(String)
      end 
    end 
  end 
end 