class Participation < ApplicationRecord
  belongs_to :tournament
  belongs_to :fencer
end
