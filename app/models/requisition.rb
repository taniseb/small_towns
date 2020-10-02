class Requisition < ApplicationRecord
  before_create :default_value
  belongs_to :user

  def default_value
    self.status = "pendente"
    self.excluded = false
  end
end
