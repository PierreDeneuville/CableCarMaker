class CreateTelepheriques < ActiveRecord::Migration[6.1]
  def change
    create_table :telepheriques do |t|
      t.references :user, null: false, foreign_key: true
      t.string :localisation
      t.integer :seats

      t.timestamps
    end
  end
end
