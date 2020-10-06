class PersonalDatum < ApplicationRecord
  belongs_to :user
  belongs_to :city_hall
  has_many :requisitions
end
