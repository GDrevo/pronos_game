class MatchesController < ApplicationController
  def edit
    @match = Match.find(params[:id])
  end

  def update
    match = Match.find(params[:id])
    match.update(match_params)
    match.played = true unless match.result.nil?
    match.save
    all_bets = match.bets
    all_bets.each do |bet|
      bet.result = match.result
      bet.compute_score
      bet.user.send_notif_prono(bet)
      bet.save
      bet.user.calculate_total_score
    end
    match.team_home.calculate_score
    match.team_away.calculate_score
    league = match.team_home.league
    redirect_to league_path(league)
  end

  private

  def match_params
    params.require(:match).permit(:result, :date, :hour)
  end
end
