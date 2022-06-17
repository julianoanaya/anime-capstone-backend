class CreateMangas < ActiveRecord::Migration[7.0]
  def change
    create_table :mangas do |t|
      t.string :name
      t.integer :chapter
      t.text :description
      t.integer :volume

      t.timestamps
    end
  end
end
