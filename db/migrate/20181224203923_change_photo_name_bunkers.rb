class ChangePhotoNameBunkers < ActiveRecord::Migration[5.2]
  def change
    rename_column :bunkers, :picture, :photo
  end
end
