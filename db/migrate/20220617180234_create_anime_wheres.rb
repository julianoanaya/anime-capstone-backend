class CreateAnimeWheres < ActiveRecord::Migration[7.0]
  def change
    create_table :anime_wheres do |t|
      t.integer :anime_id
      t.integer :where_id
      t.string :url

      t.timestamps
    end
  end
end
