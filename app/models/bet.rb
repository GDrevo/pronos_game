class Bet < ApplicationRecord
  belongs_to :match
  belongs_to :user
  validates :prono, presence: true
end
