class CreateWhereToWatches < ActiveRecord::Migration[7.0]
  def change
    create_table :where_to_watches do |t|
      t.string :streaming_service

      t.timestamps
    end
  end
end
