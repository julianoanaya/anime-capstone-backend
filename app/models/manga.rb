class Manga < ApplicationRecord
  has_many :animes
  has_many :images
  has_many :manga_wheres
  has_many :where_to_reads, through: :manga_wheres
  has_many :anime_manga_genres
  has_many :genres, through: :anime_manga_genres
end
