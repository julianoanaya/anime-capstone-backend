class Manga < ApplicationRecord
  has_many :animes
  has_many :images
  has_many :manga_wheres
  has_many :where_to_reads, through: :manga_wheres
  has_many :manga_anime_genres
  has_many :genres, through: :manga_anime_genres
  has_many :favorites
end
