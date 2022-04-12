require 'rails_helper'

RSpec.describe ReadingList, type: :model do
  describe 'relationships' do 
    it { should have_many(:user_reading_lists) }
    it { should have_many(:users).through(:user_reading_lists) }
  end 

  describe 'validations' do 
    it { should validate_presence_of(:name) }
  end 
end
