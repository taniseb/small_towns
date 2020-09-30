class CreateRequisitions < ActiveRecord::Migration[6.0]
  def change
    create_table :requisitions do |t|
      t.string :status
      t.references :users

      t.timestamps
    end
  end
end
