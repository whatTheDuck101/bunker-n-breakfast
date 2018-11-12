class CreateBunkers < ActiveRecord::Migration[5.2]
  def change
    create_table :bunkers do |t|
      t.string :name
      t.text :location
      t.float :price
      t.text :description
      t.string :picture
      t.boolean :is_available
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
