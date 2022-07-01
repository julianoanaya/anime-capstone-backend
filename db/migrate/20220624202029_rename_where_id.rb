class RenameWhereId < ActiveRecord::Migration[7.0]
  def change
    rename_column :anime_wheres, :where_id, :where_to_watch_id
  end
end
