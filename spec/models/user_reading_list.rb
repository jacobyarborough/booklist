require 'rails_helper'

RSpec.describe UserReadingList, type: :model do 
  describe 'relationships' do
    it { should belong_to :user }
    it { should belong_to :reading_list }
  end 

  describe 'validations' do 
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:reading_list_id) }
    it { should validate_presence_of(:isbn) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:author) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:thumbnail) }
    it { should validate_presence_of(:info_link) }
  end 
end 