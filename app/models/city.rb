class City < ApplicationRecord
  has_many :reviews
  has_many :users
end
