class CreateCityHalls < ActiveRecord::Migration[6.0]
  def change
    create_table :city_halls do |t|
      t.string :name
      t.integer :ibge_code

      t.timestamps
    end
  end
end
