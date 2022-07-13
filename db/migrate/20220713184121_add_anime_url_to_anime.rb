class AddAnimeUrlToAnime < ActiveRecord::Migration[7.0]
  def change
    add_column :animes, :anime_url, :string
  end
end
