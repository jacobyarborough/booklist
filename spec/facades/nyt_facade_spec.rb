require 'rails_helper'

RSpec.describe "NYT Facade" do 
  describe '.get_categories' do 
    it 'returns NYT bestseller categories', :vcr do
      response = NytFacade.get_categories

      expect(response).to be_a(Hash)
    end 
  end 
end 