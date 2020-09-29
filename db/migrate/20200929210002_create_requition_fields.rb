class CreateRequitionFields < ActiveRecord::Migration[6.0]
  def change
    create_table :requition_fields do |t|
      t.string :field_name
      t.string :new_value
      t.boolean :excluded
      t.string :justification
      t.references :requisition

      t.timestamps
    end
  end
end
