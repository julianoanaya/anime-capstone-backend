class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :name
      t.integer :seasons
      t.integer :episode
      t.string :dub
      t.string :image_url
      t.text :description
      t.integer :manga_id

      t.timestamps
    end
  end
end
