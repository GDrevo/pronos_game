class BetsController < ApplicationController
  def new
    @bet = Bet.new(user: current_user)
    @bet.match_id = params[:match_id]
    @match = Match.find(params[:match_id])
    @league = @match.team_home.league
    @matches_home_home = Match.where(team_home: @match.team_home).where(played: true)
    @matches_home_away = Match.where(team_away: @match.team_home).where(played: true)
    @matches_home = @matches_home_home + @matches_home_away
    @matches_home = @matches_home.sort_by &:matchweek
    @matches_home = @matches_home.last(5)
    @matches_away_home = Match.where(team_home: @match.team_away).where(played: true)
    @matches_away_away = Match.where(team_away: @match.team_away).where(played: true)
    @matches_away = @matches_away_home + @matches_away_away
    @matches_away = @matches_away.sort_by &:matchweek
    @matches_away = @matches_away.last(5)
  end

  def create
    @bet = Bet.new(bet_params)
    @bet.user = current_user
    @bet.match_id = params[:match_id]
    match = Match.find(params[:match_id])
    team = Team.find(match.team_home_id)
    league = League.find(team.league_id)
    if @bet.doable?
      @bet.save
      if @bet.save
        team.calculate_score
        redirect_to league_path(league)
      else
        redirect_to league_path(league), notice: "Erreur de format, ex: '2-2', '2 0'... Prono non enregistré."
      end
    else
      redirect_to league_path(league), notice: "Le match a déjà commencé."
    end
  end

  private

  def bet_params
    params.require(:bet).permit(:prono, :result, :match_id)
  end
end
