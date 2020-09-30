class Addreference < ActiveRecord::Migration[6.0]
  def change
    add_reference :city_halls, :user, index: true
  end
end
