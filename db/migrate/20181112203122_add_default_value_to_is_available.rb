class AddDefaultValueToIsAvailable < ActiveRecord::Migration[5.2]
  def change
    change_column :bunkers, :is_available, :boolean, default: true
  end
end
