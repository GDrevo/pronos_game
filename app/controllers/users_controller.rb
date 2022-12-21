class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bets = Bet.where(user: @user)
    @won_bets = @bets.where.not(score: 0)
    @perfect_bets = @won_bets.where(score: 10)
    @ranking = @user.ranking + 1
  end
end
