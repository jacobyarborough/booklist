class ReadingList < ApplicationRecord
  has_many :user_reading_lists
  has_many :users, through: :user_reading_lists

  validates :name, presence: true
end
