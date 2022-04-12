require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do 
    it { should have_many(:user_reading_lists) }
    it { should have_many(:reading_lists).through(:user_reading_lists) }
  end 

  describe 'validations' do 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least 4 }
    it { should have_secure_password }
  end 
end
