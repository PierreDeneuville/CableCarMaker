class CreateCableCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cable_cars do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :seats
      t.decimal :price
      t.boolean :is_full
      t.string :city
      t.integer :travel_length
      t.integer :travel_speed
      t.integer :travel_time
      t.integer :upper_terminal
      t.integer :lower_terminal
      t.text :photos

      t.timestamps
    end
  end
end
