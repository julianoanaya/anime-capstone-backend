class MangaWhere < ApplicationRecord
  belongs_to :manga
  belongs_to :where_to_read
end
