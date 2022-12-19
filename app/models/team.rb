class Team < ApplicationRecord
  belongs_to :league
  has_many :team_home_matches, class_name: 'Match',
                               foreign_key: 'team_home_match_id'
  has_many :team_away_matches, class_name: 'Match',
                               foreign_key: 'team_away_match_id'
  has_one_attached :photo

  def calculate_score
    home_matches = Match.where(team_home: self)
    away_matches = Match.where(team_away: self)
    self.points = 0
    self.victories = 0
    self.defeats = 0
    self.draws = 0
    self.games_played = 0
    self.goals_for = 0
    self.goals_against = 0
    self.goal_average = 0
    self.clean_sheets = 0
    home_matches.each do |match|
      team_home_buts = match.result.chars[0].to_i if match.result?
      team_away_buts = match.result.chars[2].to_i if match.result?
      if match.result?
        self.games_played += 1
        self.goals_for += team_home_buts
        self.goals_against += team_away_buts
        self.clean_sheets += 1 if team_away_buts.zero?
        if team_home_buts > team_away_buts
          self.victories += 1
        elsif team_home_buts < team_away_buts
          self.defeats += 1
        else
          self.draws += 1
        end
        save
      end
    end

    away_matches.each do |match|
      team_home_buts = match.result.chars[0].to_i if match.result?
      team_away_buts = match.result.chars[2].to_i if match.result?
      if match.result?
        self.games_played += 1
        self.goals_for += team_away_buts
        self.goals_against += team_home_buts
        self.clean_sheets += 1 if team_home_buts.zero?
        if team_away_buts > team_home_buts
          self.victories += 1
        elsif team_away_buts < team_home_buts
          self.defeats += 1
        else
          self.draws += 1
        end
        save
      end
    end
    self.goal_average = self.goals_for - self.goals_against
    self.points = (3 * self.victories) + self.draws
    save
  end
end
