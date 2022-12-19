class League < ApplicationRecord
  belongs_to :season
  has_many :teams
  has_many :matchweeks
  has_many :matches, through: :teams
end
