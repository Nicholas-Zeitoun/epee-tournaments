class Tournament < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :fencers, through: :participations
end
