class Fencer < ApplicationRecord
  has_one_attached :photo
  has_many :participations, dependent: :destroy
  has_many :tournaments, through: :participations
end
