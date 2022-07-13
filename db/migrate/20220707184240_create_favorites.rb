class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :anime_id
      t.integer :manga_id

      t.timestamps
    end
  end
end
