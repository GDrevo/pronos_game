class LeaguesController < ApplicationController
  def show
    @today = Date.today
    @league = League.find(params[:id])
    @teams = Team.where(league: @league).order("points DESC, goal_average DESC")
    @matchweeks = Matchweek.where(league: @league)
    @matches =  Match.joins(team_home: :league).where(leagues: @league)
    @nextmatches = @matches.where(played: false).sort_by(&:date).first(10)
  end
end
