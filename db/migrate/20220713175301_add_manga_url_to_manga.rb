class AddMangaUrlToManga < ActiveRecord::Migration[7.0]
  def change
    add_column :mangas, :manga_url, :string
  end
end
