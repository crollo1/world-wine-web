class AddVideoUrlToRegions < ActiveRecord::Migration[5.2]
  def change
    add_column :regions, :video_url, :text
  end
end
