class WhereToWatch < ApplicationRecord
  has_many :anime_wheres
  has_many :animes, through: :anime_where
end
