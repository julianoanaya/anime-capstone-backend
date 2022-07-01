class RenameWhereToRead < ActiveRecord::Migration[7.0]
  def change
    rename_column :manga_wheres, :where_to_read, :where_to_read_id
  end
end
