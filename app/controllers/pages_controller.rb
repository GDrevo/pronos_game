class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @users = User.all.sort_by { |user| -user.total_score }
    @users = @users.first(100)
    @new_users = User.last(20).reverse
  end
end
