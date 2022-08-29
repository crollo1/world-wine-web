class AddWineIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :wine_id, :integer
  end
end
