class Movie < ApplicationRecord
  has_many :favorites
  has_many :reviews
end
