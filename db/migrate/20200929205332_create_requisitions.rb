class CreateRequisitions < ActiveRecord::Migration[6.0]
  def change
    create_table :requisitions do |t|
      t.string :status
      t.string :field_name
      t.string :new_value
      t.boolean :excluded
      t.string :justification
      t.references :user

      t.timestamps
    end
  end
end
