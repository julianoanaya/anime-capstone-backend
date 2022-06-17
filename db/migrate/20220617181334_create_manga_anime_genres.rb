class CreateMangaAnimeGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :manga_anime_genres do |t|
      t.integer :manga_id
      t.integer :anime_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
