class RenameGenreToCatagory < ActiveRecord::Migration[7.0]
  def change
    rename_column :genres, :genre, :category
  end
end
