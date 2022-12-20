class InvitationsController < ApplicationController
  def index
    @friends = Invitation.where(user: current_user, confirmed: true) + Invitation.where(friend_id: current_user.id, confirmed: true)
    @pending_invitations = Invitation.where(user: current_user, confirmed: false) + Invitation.where(friend_id: current_user.id, confirmed: false)
    if params[:query].present?
      sql_query = <<~SQL
        users.username ILIKE :query
        OR users.email ILIKE :query
      SQL
      @users = User.where(sql_query, query: "%#{params[:query]}%").first(10)
      @users = User.where.not(id: current_user.id).first(10) if @users.length.zero?
    else
      @users = User.where.not(id: current_user.id).first(10)
    end
  end
end
