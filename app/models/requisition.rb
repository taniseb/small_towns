class Requisition < ApplicationRecord
  before_create :default_value
  belongs_to :user
  belongs_to :personal_datum, optional: true
  validates :datum_font, presence: true
  validates :justification, presence: true, length: { minimum: 15 }
  def default_value
    self.status = "pendente"
    self.excluded ||= false
  end

  def find_personal_datum
    PersonalDatum.find_by( user_id: self.user_id, datum_font: self.field_name)
  end

  def button_color
    case self.status
    when "aprovada" then "success"
    when "reprovada" then "danger"
    else
      "primary"
    end
  end
end
