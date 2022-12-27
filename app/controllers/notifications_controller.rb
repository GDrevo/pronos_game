class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(user: params[:user_id])
    @notifications = @notifications.where("created_at > ?", 2.days.ago).order(created_at: :desc)
  end
end
