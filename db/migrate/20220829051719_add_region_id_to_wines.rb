class AddRegionIdToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :region_id, :integer
  end
end
