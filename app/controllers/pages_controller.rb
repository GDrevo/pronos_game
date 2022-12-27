class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @users = User.where.not(total_score: 0).sort_by { |user| -user.total_score }
    @users = @users.first(20)
    @usersmoy = User.where.not(total_score: 0).sort_by { |user| -(user.total_score.to_f / user.bet_number) }
    @usersmoy = @usersmoy.first(20)
  end

  def messenger
    @current_user = current_user
    @friends = @current_user.friends.all_except(@current_user)
  end
end
