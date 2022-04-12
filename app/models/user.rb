class User < ApplicationRecord
  has_many :user_reading_lists
  has_many :reading_lists, through: :user_reading_lists

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: :true, length: { minimum: 4 }
  validates :password_confirmation, presence: :true
  validates :password_digest, presence: true

  has_secure_password
end
