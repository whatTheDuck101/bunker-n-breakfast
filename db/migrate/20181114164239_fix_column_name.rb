class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :bunkers, :location, :address
  end
end
