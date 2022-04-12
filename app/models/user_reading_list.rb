class UserReadingList < ApplicationRecord
  belongs_to :user 
  belongs_to :reading_list

  validates_presence_of :user_id, :reading_list_id, :isbn, :name, :author, :image, :thumbnail, :info_link
end 