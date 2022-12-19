class Team < ApplicationRecord
  belongs_to :league
  has_many :team_home_matches, class_name: 'Match',
                               foreign_key: 'team_home_match_id'
  has_many :team_away_matches, class_name: 'Match',
                               foreign_key: 'team_away_match_id'
  has_one_attached :photo
end
