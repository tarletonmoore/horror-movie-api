class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :favorites
  has_many :movies, through: :favorites
  has_many :reviews
  has_many :ratings
end
