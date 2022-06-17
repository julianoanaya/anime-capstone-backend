class CreateMangaWheres < ActiveRecord::Migration[7.0]
  def change
    create_table :manga_wheres do |t|
      t.integer :manga_id
      t.integer :where_to_read
      t.string :url_manga

      t.timestamps
    end
  end
end
