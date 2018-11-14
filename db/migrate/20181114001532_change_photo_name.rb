class ChangePhotoName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :picture, :photo
  end
end
