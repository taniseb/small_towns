class CreateCityHalls < ActiveRecord::Migration[6.0]
  def change
    create_table :city_halls do |t|
      t.string :name
      t.integer :ibge_code
      t.references :user

      t.timestamps
    end
  end
end
