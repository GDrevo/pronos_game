class BetsController < ApplicationController
  def new
    @bet = Bet.new(user: current_user)
    @bet.match_id = params[:match_id]
    @match = Match.find(params[:match_id])
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

  def edit
    @bet = Bet.where(match_id: params[:match_id], user: current_user).last
  end

  def update
    @bet = Bet.find(params[:match_id])
    @bet.prono = bet_params[:prono]
    match = Match.find(@bet.match_id)
    team = Team.find(match.team_home_id)
    team.calculate_score
    league = League.find(team.league_id)
    @bet.save
    redirect_to league_path(league)
  end

  private

  def bet_params
    params.require(:bet).permit(:prono)
  end
end
