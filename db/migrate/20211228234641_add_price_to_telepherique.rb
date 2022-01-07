class AddPriceToTelepherique < ActiveRecord::Migration[6.1]
  def change
    add_column :telepheriques, :price, :decimal, null: false, default: 0.0
  end
end
