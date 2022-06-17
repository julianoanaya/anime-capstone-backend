class CreateWhereToReads < ActiveRecord::Migration[7.0]
  def change
    create_table :where_to_reads do |t|
      t.string :reading_service

      t.timestamps
    end
  end
end
