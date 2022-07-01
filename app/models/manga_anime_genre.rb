class MangaAnimeGenre < ApplicationRecord
  belongs_to :anime, optional: true
  belongs_to :manga, optional: true
  belongs_to :genre
end
