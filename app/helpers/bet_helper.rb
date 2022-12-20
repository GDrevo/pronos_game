module BetHelper
  def new_or_edit_match_bet_path(match)
    if Bet.where(match: match, user: current_user).exists?
      edit_match_path(match)
    else
      new_match_bet_path(match)
    end
  end
end
