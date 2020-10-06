class AddPersonalDataToRequisitions < ActiveRecord::Migration[6.0]
  def change
    add_reference :requisitions, :personal_datum, foreign_key: true
  end
end
