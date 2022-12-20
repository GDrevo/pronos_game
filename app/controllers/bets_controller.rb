class BetsController < ApplicationController
  def new
    @bet = Bet.new(user: current_user)
    @bet.match_id = params[:match_id]
    @match = Match.find(params[:match_id])
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
    @bet.save
    match = Match.find(params[:match_id])
    team = Team.find(match.team_home_id)
    team.calculate_score
    league = League.find(team.league_id)
    redirect_to league_path(league)
  end

  # def edit
  #   # @bet = Bet.where(match_id: params[:match_id], user: current_user).last
  #   @bet = Bet.find(bet_params)
  #   @match = Match.find(params[:match_id])
  #   @matches_home_home = Match.where(team_home: @match.team_home).where(played: true)
  #   @matches_home_away = Match.where(team_away: @match.team_home).where(played: true)
  #   @matches_home = @matches_home_home + @matches_home_away
  #   @matches_home = @matches_home.sort_by &:matchweek
  #   @matches_home = @matches_home.last(5)
  #   @matches_away_home = Match.where(team_home: @match.team_away).where(played: true)
  #   @matches_away_away = Match.where(team_away: @match.team_away).where(played: true)
  #   @matches_away = @matches_away_home + @matches_away_away
  #   @matches_away = @matches_away.sort_by &:matchweek
  #   @matches_away = @matches_away.last(5)
  # end

  # def update
  #   @bet = Bet.find(params[:match_id])
  #   @bet.destroy
  #   @bet = Bet.create(bet_params)
  #   @bet.user = current_user
  #   @bet.match_id = params[:match_id]
  #   # @bet.prono = bet_params[:prono]
  #   # @bet.result = bet_params[:result]
  #   match = Match.find(@bet.match_id)
  #   match.result = @bet.result
  #   match.played = true if match.result?
  #   match.save
  #   @bet.compute_score
  #   @bet.save
  #   if @bet.user.admin?
  #     all_bets = Bet.where(match: match)
  #     all_bets.each do |bet|
  #       bet.user.calculate_total_score
  #     end
  #   end
  #   team = Team.find(match.team_home_id)
  #   team.calculate_score
  #   league = League.find(team.league_id)
  #   redirect_to league_path(league)
  # end

  private

  def bet_params
    params.require(:bet).permit(:prono, :result, :match_id)
  end
end
