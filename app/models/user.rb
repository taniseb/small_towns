class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :requisitions, dependent: :destroy
  has_many :personal_data
  belongs_to :city_hall, optional:true
  def avaliable_data
    PersonalDatum.joins(:requisitions)
        .where(requisitions:{status: "aprovada"}, user_id: self.id)
  end
end
