class AddImageUrlToManga < ActiveRecord::Migration[7.0]
  def change
    add_column :mangas, :image_url, :string
  end
end
