class CityHall < ApplicationRecord
  has_many :users
  has_many :personal_data
  validates :name, presence: true, uniqueness: true, format: { with: /\A[a-zA-Zá-úÁ-ÚüÜ ]+\z/ }
end
