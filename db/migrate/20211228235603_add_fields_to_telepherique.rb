class AddFieldsToTelepherique < ActiveRecord::Migration[6.1]
  def change
    add_column :telepheriques, :name, :text
    add_column :telepheriques, :is_full, :boolean, default: false
    add_column :telepheriques, :travel_length, :text
    add_column :telepheriques, :travel_speed, :text
    add_column :telepheriques, :travel_time, :text
    add_column :telepheriques, :upper_terminal, :integer
    add_column :telepheriques, :lower_terminal, :integer
  end
end
