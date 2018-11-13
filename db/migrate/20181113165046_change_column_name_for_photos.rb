class ChangeColumnNameForPhotos < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :photo, :picture
  end
end
