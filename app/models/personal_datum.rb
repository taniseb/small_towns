class PersonalDatum < ApplicationRecord
  belongs_to :user
  belongs_to :city_hall
  has_many :requisitions
  validates :datum_font, presence: true
  validates :datum_information, presence: true
  validates :datum_access, presence: true
  #uma validação para que, para todo usuário E field_name haja apenas 1 para um usuário

end
