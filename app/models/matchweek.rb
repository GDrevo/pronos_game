class Matchweek < ApplicationRecord
  belongs_to :league
  has_many :matches
end
