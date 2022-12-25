class MatchweeksController < ApplicationController
  def show
    @matchweek = Matchweek.find(params[:id])
    @matches = Match.where(matchweek: @matchweek).sort_by(&:date)
    @next_matchweek = @matchweek.next
    @previous_matchweek = @matchweek.previous
    @league = @matchweek.league
  end
end
