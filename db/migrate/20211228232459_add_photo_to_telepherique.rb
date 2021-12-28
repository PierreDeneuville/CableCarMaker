class AddPhotoToTelepherique < ActiveRecord::Migration[6.1]
  def change
    add_column :telepheriques, :photo, :text
  end
end
