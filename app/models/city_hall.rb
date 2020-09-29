class CityHall < ApplicationRecord
  has_many :users
  has_many :personal_data
end
