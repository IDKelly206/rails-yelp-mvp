class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.timestamps

      t.string :name, null: false
      t.string :address, null: false
      t.string :category, null: false
      t.string :phone_number
    end
  end
end
