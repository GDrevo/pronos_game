class InvitationsController < ApplicationController
  def index
    @friends = current_user.friends.sort_by { |friend| -friend.total_score }
    @friends = @friends.first(10)
    @pending_invitations = Invitation.where(user: current_user, confirmed: false)
    if params[:query].present?
      sql_query = <<~SQL
        users.username ILIKE :query
        OR users.email ILIKE :query
      SQL
      @users = User.where(sql_query, query: "%#{params[:query]}%").first(10)
      @users = [] if @users.length.zero?
      @users = @users.sort_by &:total_score
    else
      @users = []
    end
  end

  def update
    @invitation = Invitation.find(params[:id])
    @invitation.confirmed = true
    @invitation.save!
    redirect_to user_invitations_path(current_user)
  end

  def destroy
    @invitation = Invitation.find(params[:id])
    @invitation.delete
    redirect_to user_invitations_path(current_user)
  end
end
