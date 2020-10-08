class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :requisitions, dependent: :destroy
  has_many :personal_data
  belongs_to :city_hall, optional:true
  validates :first_name, format: { with: /\A[a-zA-Zá-úÁ-ÚüÜ]+\z/ }
  validates :last_name, format: { with: /\A[a-zA-Zá-úÁ-ÚüÜ]+\z/  }
  validates :cpf, length: { is: 11 }, format: { with: /[0-9]/}

  def avaliable_data
    PersonalDatum.joins(:requisitions)
        .where(requisitions:{status: "aprovada"}, user_id: self.id)
  end
end
