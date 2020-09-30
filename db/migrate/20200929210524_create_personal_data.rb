class CreatePersonalData < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_data do |t|
      t.string :datum_font
      t.string :datum_information
      t.string :datum_access  

      t.references :user
      t.references :city_hall

      t.timestamps
    end
  end
end
