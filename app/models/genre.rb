class Genre < ApplicationRecord
  has_many :anime_manga_genres
  has_many :animes, through: :anime_manga_genres
  has_many :mangas, through: :anime_manga_genres
end
