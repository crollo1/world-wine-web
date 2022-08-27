class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.text :name
      t.text :style
      t.integer :vintage
      t.text :image

      t.timestamps
    end
  end
end
