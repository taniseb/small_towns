class PersonalDatum < ApplicationRecord
  belongs_to :user
  belongs_to :city_hall
end
