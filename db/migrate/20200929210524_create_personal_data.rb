class CreatePersonalData < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_data do |t|
      t.string :iptu
      t.string :scholar_attendancy
      t.string :health_information
      t.string :licence
      t.string :social_assistancy
      t.string :contract
      t.string :public_security
      t.string :traffic
      t.string :construction
      t.references :user
      t.references :city_hall

      t.timestamps
    end
  end
end
