class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.text :name
      t.text :country
      t.text :image

      t.timestamps
    end
  end
end
