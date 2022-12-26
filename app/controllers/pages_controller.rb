class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @users = User.all.sort_by { |user| -user.total_score }
    @users = @users.first(100)
    @new_users = User.last(20).reverse
  end

  def messenger
    @current_user = current_user
    @friends = @current_user.friends.all_except(@current_user)
  end
end
