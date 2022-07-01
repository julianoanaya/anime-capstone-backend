class WhereToRead < ApplicationRecord
  has_many :manga_wheres
  has_many :mangas, through:  :manga_wheres
end
