class Anime < ApplicationRecord
  belongs_to :manga, optional: true
  has_many :anime_wheres
  has_many :where_to_watchs, through: :anime_wheres
  has_many :anime_manga_genres
  has_many :genres, through: :anime_manga_genres
end
