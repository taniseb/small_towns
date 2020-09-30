class Addreference < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :city_hall, index: true
  end
end
