class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.text :description

      t.timestamps
    end
  end
end
