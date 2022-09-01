class CreateUsersWines < ActiveRecord::Migration[5.2]
  def change
    create_table :users_wines, :id => false do |t|
      t.integer :user_id
      t.integer :wine_id
    end
  end
end
