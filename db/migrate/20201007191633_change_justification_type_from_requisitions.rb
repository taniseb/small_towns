class ChangeJustificationTypeFromRequisitions < ActiveRecord::Migration[6.0]
  def change
    change_column :requisitions, :justification, :text
  end
end
